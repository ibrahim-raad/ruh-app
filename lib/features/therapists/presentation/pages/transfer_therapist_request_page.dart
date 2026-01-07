import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/router/app_routes.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/therapists/domain/dtos/create_therapist_transfer_request_dto.dart';
import 'package:ruh/features/therapists/domain/repositories/therapists_repository.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

class TransferTherapistRequestPageArgs {
  final String? currentTherapistName;
  final String selectedTherapistId;
  final String selectedTherapistName;
  final String? fromTherapyCaseId;

  const TransferTherapistRequestPageArgs({
    this.currentTherapistName,
    required this.selectedTherapistId,
    required this.selectedTherapistName,
    this.fromTherapyCaseId,
  });
}

class TransferTherapistRequestPage extends StatefulWidget {
  final TransferTherapistRequestPageArgs args;

  const TransferTherapistRequestPage({super.key, required this.args});

  @override
  State<TransferTherapistRequestPage> createState() =>
      _TransferTherapistRequestPageState();
}

class _TransferTherapistRequestPageState
    extends State<TransferTherapistRequestPage> {
  final _formKey = GlobalKey<FormState>();
  final _reasonController = TextEditingController();
  final _detailsController = TextEditingController();
  bool _isSubmitting = false;

  @override
  void dispose() {
    _reasonController.dispose();
    _detailsController.dispose();
    super.dispose();
  }

  String _buildTransferReason() {
    final reason = _reasonController.text.trim();
    final details = _detailsController.text.trim();
    if (details.isEmpty) return reason;
    return '$reason\n\n$details';
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    if (_isSubmitting) return;

    setState(() => _isSubmitting = true);
    final repo = getIt<TherapistsRepository>();
    final dto = CreateTherapistTransferRequestDto(
      transferReason: _buildTransferReason(),
      therapistId: widget.args.selectedTherapistId,
      fromTherapyCaseId: widget.args.fromTherapyCaseId,
    );

    final result = await repo.createTransferRequest(dto);
    if (!mounted) return;

    result.fold(
      (failure) {
        setState(() => _isSubmitting = false);
        AppToast.showError(context, failure.getErrorMessage(context));
      },
      (_) {
        setState(() => _isSubmitting = false);
        AppToast.showSuccess(
          context,
          'Request sent. You will receive an email once it is processed.',
        );
        context.go(AppRoutes.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final current = widget.args.currentTherapistName?.trim();
    final currentLabel = (current == null || current.isEmpty)
        ? 'current therapist: —'
        : 'current therapist: ${current.toLowerCase()}';
    final selectedLabel =
        'new therapist: ${widget.args.selectedTherapistName.toLowerCase()}';
    final subtitle = '$currentLabel\n$selectedLabel';

    return Scaffold(
      appBar: AppBar(
        title: const Text('transfer therapist'),
        foregroundColor: context.onPrimary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'request to change therapist',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                    color: context.onSurface,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: context.onSurfaceVariant,
                    height: 1.35,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'reason',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                    color: context.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: 8.h),
                TextFormField(
                  controller: _reasonController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    hintText: 'briefly explain why you want to transfer...',
                  ),
                  validator: (v) {
                    final value = v?.trim() ?? '';
                    if (value.isEmpty) return 'Reason is required';
                    if (value.length < 10) {
                      return 'Please add a bit more detail';
                    }
                    return null;
                  },
                ),

                SizedBox(height: 14.h),
                Text(
                  'details (optional)',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                    color: context.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: 8.h),
                TextFormField(
                  controller: _detailsController,
                  maxLines: 4,
                  decoration: const InputDecoration(
                    hintText:
                        'add more context to help us review your request...',
                  ),
                ),
                SizedBox(height: 18.h),
                SizedBox(
                  width: double.infinity,
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: _isSubmitting ? null : _submit,
                    child: _isSubmitting
                        ? const AppLoader(size: 20)
                        : const Text('submit request'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
