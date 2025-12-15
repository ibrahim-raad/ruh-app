import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/features/patient_profile/domain/dtos/update_patient_profile_dto.dart';
import 'package:ruh/shared/widgets/app_loader.dart';
import '../../../../core/di/injection.dart';
import '../bloc/patient_profile_bloc.dart';
import '../bloc/patient_profile_event.dart';
import '../bloc/patient_profile_state.dart';
import '../widgets/profile_form_widget.dart';
import '../widgets/profile_image_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PatientProfileBloc>()
            ..add(const PatientProfileEvent.getProfile()),
      child: const EditProfileView(),
    );
  }
}

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.tr.edit_profile)),
      body: BlocConsumer<PatientProfileBloc, PatientProfileState>(
        listenWhen: (previous, current) =>
            current.failure != null && current.failure != previous.failure,
        listener: (context, state) {
          if (state.failure != null) {
            final message = state.failure!.getErrorMessage(context);
            AppToast.showError(context, message);
          }
        },
        builder: (context, state) {
          // 1. Initial Loading (No data yet)
          if (state.status == PatientProfileStatus.loading &&
              state.patient == null) {
            return const Center(child: AppLoader());
          }

          // 2. Initial Failure (No data + Error)
          if (state.status == PatientProfileStatus.failure &&
              state.patient == null) {
            return Center(
              child: Text(context.tr.server_error), // Or specific error widget
            );
          }

          // 3. Data Available (Show Content)
          if (state.patient != null) {
            final patient = state.patient!;
            return Stack(
              children: [
                SingleChildScrollView(
                  padding: EdgeInsets.all(24.w),
                  child: Column(
                    children: [
                      ProfileImageWidget(
                        imageUrl: patient.user.profileUrl,
                        onImageSelected: (file) {
                          context.read<PatientProfileBloc>().add(
                            PatientProfileEvent.uploadImage(file),
                          );
                        },
                        onDeleteImage: () {
                          context.read<PatientProfileBloc>().add(
                            const PatientProfileEvent.deleteImage(),
                          );
                        },
                      ),
                      SizedBox(height: 32.h),
                      Text(patient.user.email),
                      SizedBox(height: 32.h),
                      ProfileFormWidget(
                        initialFullName: patient.user.fullName,
                        initialDateOfBirth: patient.user.dateOfBirth,
                        initialGender: patient.user.gender,
                        onSave: (fullName, dob, gender, countryId, languages) {
                          final dto = UpdatePatientProfileDto(
                            fullName: fullName,
                            dateOfBirth: dob,
                            gender: gender,
                            countryId: countryId,
                            spokenLanguages: languages,
                            version: patient.user.version,
                            patientVersion: patient.version,
                          );
                          context.read<PatientProfileBloc>().add(
                            PatientProfileEvent.updateProfile(dto),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                if (state.status == PatientProfileStatus.loading)
                  Container(
                    color: Colors.black.withValues(alpha: 0.3),
                    child: const Center(child: AppLoader()),
                  ),
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
