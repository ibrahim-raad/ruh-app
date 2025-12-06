import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import '../../../../core/utils/app_toast.dart';
import '../../../../core/utils/failure_extensions.dart';
import '../../../../core/utils/l10n_extensions.dart';
import '../../../../core/utils/validators.dart';
import '../../../../shared/widgets/app_loader.dart';
import '../../domain/dtos/login_dto.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLoginPressed() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthEvent.login(
          LoginDto(
            email: _emailController.text,
            password: _passwordController.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.mapOrNull(
            authenticated: (_) {
              // Navigate to Home
              // context.go('/home');
              AppToast.showSuccess(context, context.tr.login_success);
            },
            failure: (state) {
              final message = state.failure.getErrorMessage(context);
              AppToast.showError(context, message);
            },
          );
        },
        builder: (context, state) {
          return Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(24.w),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.tr.ruh_therapy,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: context.primary,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      context.tr.ruh_therapy_welcome_back,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 32.h),

                    Card(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 26.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Email Field
                            Text(
                              context.tr.email,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: context.tr.enter_your_email,
                                prefixIcon: const Icon(Icons.email_outlined),
                              ),
                              validator: (value) =>
                                  Validators.email(value, context),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(height: 16.h),

                            // Password Field
                            Text(
                              context.tr.password,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: context.tr.enter_your_password,
                                prefixIcon: const Icon(Icons.lock_outline),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscure
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                  ),
                                  onPressed: () =>
                                      setState(() => _isObscure = !_isObscure),
                                ),
                              ),
                              obscureText: _isObscure,
                              validator: (value) =>
                                  Validators.password(value, context),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 32.h),

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 48.h,
                      child: state.maybeMap(
                        loading: (_) => const Center(child: AppLoader()),
                        orElse: () => ElevatedButton(
                          onPressed: _onLoginPressed,
                          child: Text(context.tr.login),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
