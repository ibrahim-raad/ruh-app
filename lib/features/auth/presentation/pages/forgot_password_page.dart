import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/router/app_routes.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/core/utils/validators.dart';
import 'package:ruh/features/auth/domain/usecases/request_password_reset.dart';
import 'package:ruh/features/auth/presentation/cubit/forgot_password_cubit.dart';
import 'package:ruh/features/auth/presentation/cubit/forgot_password_state.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    context.read<ForgotPasswordCubit>().submit(_emailController.text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ForgotPasswordCubit(getIt<RequestPasswordReset>()),
      child: Scaffold(
        appBar: AppBar(title: Text(context.tr.forgot_your_password)),
        body: SafeArea(
          child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
            listenWhen: (prev, next) =>
                prev.failure != next.failure ||
                prev.isSuccess != next.isSuccess,
            listener: (context, state) {
              final failure = state.failure;
              if (failure != null) {
                AppToast.showError(context, failure.getErrorMessage(context));
              }
              if (state.isSuccess) {
                AppToast.showSuccess(context, 'Reset link sent');
              }
            },
            builder: (context, state) {
              final isSuccess = state.isSuccess;
              final isLoading = state.isLoading;

              return Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(24.w),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 520),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'reset your password',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w900,
                            color: context.onSurface,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'enter your email and we’ll send you a reset link. open it, set a new password, then come back here to log in.',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: context.onSurfaceVariant,
                            height: 1.35,
                          ),
                        ),
                        SizedBox(height: 18.h),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 18.h,
                            ),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    context.tr.email,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  TextFormField(
                                    controller: _emailController,
                                    enabled: !isSuccess && !isLoading,
                                    decoration: InputDecoration(
                                      hintText: context.tr.enter_your_email,
                                      prefixIcon: const Icon(
                                        Icons.email_outlined,
                                      ),
                                    ),
                                    validator: (v) =>
                                        Validators.email(v, context),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                  SizedBox(height: 14.h),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50.h,
                                    child: ElevatedButton(
                                      onPressed: (!isSuccess && !isLoading)
                                          ? () => _submit(context)
                                          : null,
                                      child: isLoading
                                          ? const AppLoader(size: 20)
                                          : Text(
                                              isSuccess
                                                  ? 'email sent'
                                                  : 'send reset link',
                                            ),
                                    ),
                                  ),
                                  if (isSuccess) ...[
                                    SizedBox(height: 14.h),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.all(14.w),
                                      decoration: BoxDecoration(
                                        color: context.surfaceContainer,
                                        borderRadius: BorderRadius.circular(
                                          16.r,
                                        ),
                                        border: Border.all(
                                          color: context.outline,
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.mark_email_read_outlined,
                                            color: context.primary,
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: Text(
                                              'we sent a reset password link to your email. once you reset your password, come back and log in.',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                                color: context.onSurface,
                                                height: 1.35,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        SizedBox(
                          width: double.infinity,
                          height: 50.h,
                          child: OutlinedButton(
                            onPressed: () => context.go(AppRoutes.login),
                            child: const Text('back to login'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
