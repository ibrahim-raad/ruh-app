import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/router/app_routes.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/features/questionnaire/domain/entities/questionnaire.dart';
import 'package:ruh/shared/widgets/app_loader.dart';
import '../bloc/questionnaire_bloc.dart';
import '../bloc/questionnaire_event.dart';
import '../bloc/questionnaire_state.dart';
import '../../../../core/di/injection.dart';
import '../models/draft_answer.dart';
import '../widgets/questionnaire_bottom_nav.dart';
import '../widgets/questionnaire_finish_step.dart';
import '../widgets/questionnaire_intro_step.dart';
import '../widgets/questionnaire_progress_header.dart';
import '../widgets/questionnaire_question_step.dart';

class QuestionnairePage extends StatelessWidget {
  final QuestionnaireType type;
  final VoidCallback? onCompleted;

  const QuestionnairePage({super.key, required this.type, this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<QuestionnaireBloc>()..add(QuestionnaireEvent.started(type)),
      child: QuestionnaireView(onCompleted: onCompleted),
    );
  }
}

class QuestionnaireView extends StatelessWidget {
  final VoidCallback? onCompleted;

  const QuestionnaireView({super.key, this.onCompleted});

  bool _isDraftValid(DraftAnswer? draft) {
    if (draft == null) return false;
    return draft.map(
      singleSelect: (d) => d.possibleAnswerId.trim().isNotEmpty,
      multipleSelect: (d) => d.possibleAnswerIds.isNotEmpty,
      text: (d) => d.value.trim().isNotEmpty,
      scale: (d) => d.value >= 1 && d.value <= 10,
    );
  }

  IconData _iconForType(QuestionnaireType type) {
    switch (type) {
      case QuestionnaireType.onboarding:
        return Icons.rocket_launch_outlined;
      case QuestionnaireType.reflection:
        return Icons.self_improvement_outlined;
      case QuestionnaireType.postSession:
        return Icons.event_available_outlined;
      case QuestionnaireType.feedback:
        return Icons.feedback_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionnaireBloc, QuestionnaireState>(
      listener: (context, state) {
        state.mapOrNull(
          failure: (f) {
            final msg = f.failure.getErrorMessage(context);
            AppToast.showError(context, msg);
          },
          content: (c) {
            final failure = c.lastFailure;
            if (failure == null) return;
            final msg = failure.getErrorMessage(context);
            AppToast.showError(context, msg);
          },
          completed: (_) {
            onCompleted?.call();
            context.go(AppRoutes.home);
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: state.maybeMap(
              loading: (_) => const Center(child: AppLoader()),
              failure: (_) => Center(child: Text(context.tr.server_error)),
              content: (content) {
                final totalQuestions = content.data.questions.length;
                final totalSteps = 1 + totalQuestions + 1;
                final stepIndex = content.stepIndex.clamp(0, totalSteps - 1);

                final isIntro = stepIndex == 0;
                final isFinish = stepIndex == totalSteps - 1;

                final canGoBack = stepIndex > 0;

                final isQuestionStep = !isIntro && !isFinish;
                final questionIndex = stepIndex - 1; // step 1 -> question 0
                final qwa = isQuestionStep
                    ? content.data.questions[questionIndex]
                    : null;
                final qId = qwa?.question.id;
                final draft = qId == null ? null : content.drafts[qId];

                final isNextEnabled = content.isSaving
                    ? false
                    : isIntro
                    ? true
                    : isFinish
                    ? true
                    : _isDraftValid(draft);

                return Stack(
                  children: [
                    Column(
                      children: [
                        if (isQuestionStep)
                          Padding(
                            padding: EdgeInsets.fromLTRB(20.w, 8.h, 20.w, 0),
                            child: QuestionnaireProgressHeader(
                              current: questionIndex + 1,
                              total: totalQuestions,
                            ),
                          ),
                        Expanded(
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 250),
                            child: Padding(
                              key: ValueKey(stepIndex),
                              padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 0),
                              child: isIntro
                                  ? QuestionnaireIntroStep(
                                      questionnaire: content.data.questionnaire,
                                      icon: _iconForType(
                                        content.data.questionnaire.type,
                                      ),
                                    )
                                  : isFinish
                                  ? const QuestionnaireFinishStep()
                                  : QuestionnaireQuestionStep(
                                      questionWithAnswers: qwa!,
                                      draft: draft,
                                      onOptionToggled:
                                          (possibleAnswerId, selected) {
                                            context.read<QuestionnaireBloc>().add(
                                              QuestionnaireEvent.optionToggled(
                                                questionId: qId!,
                                                possibleAnswerId:
                                                    possibleAnswerId,
                                                selected: selected,
                                              ),
                                            );
                                          },
                                      onTextChanged: (text) {
                                        context.read<QuestionnaireBloc>().add(
                                          QuestionnaireEvent.textChanged(
                                            questionId: qId!,
                                            text: text,
                                          ),
                                        );
                                      },
                                      onScaleChanged: (value) {
                                        context.read<QuestionnaireBloc>().add(
                                          QuestionnaireEvent.scaleChanged(
                                            questionId: qId!,
                                            value: value,
                                          ),
                                        );
                                      },
                                    ),
                            ),
                          ),
                        ),
                        QuestionnaireBottomNav(
                          canGoBack: canGoBack,
                          backLabel: context.tr.back,
                          nextLabel: isFinish
                              ? context.tr.done
                              : context.tr.next,
                          isNextEnabled: isNextEnabled,
                          onBack: canGoBack
                              ? () => context.read<QuestionnaireBloc>().add(
                                  const QuestionnaireEvent.backPressed(),
                                )
                              : null,
                          onNext: () => {
                            context.read<QuestionnaireBloc>().add(
                              isFinish
                                  ? const QuestionnaireEvent.finishPressed()
                                  : const QuestionnaireEvent.nextPressed(),
                            ),
                          },
                        ),
                        SizedBox(height: 8.h),
                      ],
                    ),
                    if (content.isSaving)
                      Container(
                        color: Colors.black.withValues(alpha: 0.25),
                        child: const Center(child: AppLoader()),
                      ),
                  ],
                );
              },
              orElse: () => const SizedBox(),
            ),
          ),
        );
      },
    );
  }
}
