import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

class TransferTherapistRequestPageArgs {
  final String? currentTherapistName;
  final String selectedTherapistId;
  final String selectedTherapistName;

  const TransferTherapistRequestPageArgs({
    this.currentTherapistName,
    required this.selectedTherapistId,
    required this.selectedTherapistName,
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

  @override
  void dispose() {
    _reasonController.dispose();
    _detailsController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    // TODO: Wire to backend transfer request endpoint.
    // payload should include:
    // - selectedTherapistId: widget.args.selectedTherapistId
    // - reason: _reasonController.text.trim()
    AppToast.showSuccess(context, 'Request submitted');
    Navigator.of(context).maybePop();
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

                SizedBox(height: 18.h),
                SizedBox(
                  width: double.infinity,
                  height: 52.h,
                  child: ElevatedButton(
                    onPressed: _submit,
                    child: const Text('submit request'),
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
