import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/delete_profile_image.dart';
import '../../domain/usecases/get_patient_profile.dart';
import '../../domain/usecases/update_patient_profile.dart';
import '../../domain/usecases/upload_profile_image.dart';
import 'patient_profile_event.dart';
import 'patient_profile_state.dart';

@injectable
class PatientProfileBloc
    extends Bloc<PatientProfileEvent, PatientProfileState> {
  final GetPatientProfile _getProfile;
  final UpdatePatientProfile _updateProfile;
  final UploadProfileImage _uploadImage;
  final DeleteProfileImage _deleteImage;

  PatientProfileBloc(
    this._getProfile,
    this._updateProfile,
    this._uploadImage,
    this._deleteImage,
  ) : super(PatientProfileState.initial()) {
    on<PatientProfileEvent>((event, emit) async {
      await event.map(
        getProfile: (_) async {
          emit(state.copyWith(status: PatientProfileStatus.loading));
          final result = await _getProfile(NoParams());
          result.fold(
            (failure) => emit(
              state.copyWith(
                status: PatientProfileStatus.failure,
                failure: failure,
              ),
            ),
            (patient) => emit(
              state.copyWith(
                status: PatientProfileStatus.success,
                patient: patient,
                failure: null,
              ),
            ),
          );
        },
        updateProfile: (e) async {
          emit(state.copyWith(status: PatientProfileStatus.loading));
          final result = await _updateProfile(e.dto);
          result.fold(
            (failure) => emit(
              state.copyWith(
                status: PatientProfileStatus.failure,
                failure: failure,
              ),
            ),
            (patient) => emit(
              state.copyWith(
                status: PatientProfileStatus.success,
                patient: patient,
                failure: null,
              ),
            ),
          );
        },
        uploadImage: (e) async {
          final result = await _uploadImage(e.image);
          result.fold((failure) => emit(state.copyWith(failure: failure)), (
            user,
          ) {
            add(const PatientProfileEvent.getProfile());
          });
        },
        deleteImage: (_) async {
          final result = await _deleteImage(NoParams());
          result.fold((failure) => emit(state.copyWith(failure: failure)), (
            user,
          ) {
            add(const PatientProfileEvent.getProfile());
          });
        },
      );
    });
  }
}
