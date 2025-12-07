import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/utils/theme_extensions.dart';
import '../../../../shared/widgets/app_loader.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';
import '../bloc/onboarding_state.dart';
import '../../domain/entities/onboarding_item.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<OnboardingBloc>()..add(const OnboardingEvent.started()),
      child: const OnboardingView(),
    );
  }
}

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNextPressed(BuildContext context, int currentIndex, int totalItems) {
    if (currentIndex < totalItems - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.read<OnboardingBloc>().add(
        const OnboardingEvent.completeOnboarding(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        state.mapOrNull(
          completed: (_) => context.go(AppRoutes.login),
          failure: (f) {
            final message = f.failure.getErrorMessage(context);
            AppToast.showError(context, message);
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: state.maybeMap(
            loading: (_) => const Center(child: AppLoader()),
            content: (content) =>
                _buildContent(context, content.items, content.currentIndex),
            orElse: () => const SizedBox(),
          ),
        );
      },
    );
  }

  Widget _buildContent(
    BuildContext context,
    List<OnboardingItem> items,
    int currentIndex,
  ) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                context.read<OnboardingBloc>().add(
                  OnboardingEvent.pageChanged(index),
                );
              },
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: Image.asset(
                          item.image,
                          height: 400.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 32.h),
                      Text(
                        item.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: context.primary,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        item.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: context.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Indicators
                Row(
                  children: List.generate(
                    items.length,
                    (index) => InkWell(
                      onTap: () => _pageController.jumpToPage(index),
                      child: Container(
                        margin: EdgeInsets.only(right: 8.w),
                        width: currentIndex == index ? 24.w : 8.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? context.primary
                              : context.tertiary,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ),
                  ),
                ),
                // Buttons
                Row(
                  children: [
                    if (currentIndex < items.length - 1)
                      TextButton(
                        onPressed: () => context.read<OnboardingBloc>().add(
                          const OnboardingEvent.completeOnboarding(),
                        ),
                        child: Text(context.tr.skip),
                      ),
                    SizedBox(width: 8.w),
                    ElevatedButton(
                      onPressed: () =>
                          _onNextPressed(context, currentIndex, items.length),
                      child: Text(
                        currentIndex == items.length - 1
                            ? context.tr.get_started
                            : context.tr.next,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
