import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/questionnaire/domain/entities/question.dart';
import 'package:ruh/features/questionnaire/domain/entities/question_with_answers.dart';
import '../models/draft_answer.dart';
import 'answer_option_tile.dart';
import 'answer_scale_slider.dart';
import 'answer_text_field.dart';

class QuestionnaireQuestionStep extends StatelessWidget {
  final QuestionWithAnswers questionWithAnswers;
  final DraftAnswer? draft;
  final void Function(String possibleAnswerId, bool selected) onOptionToggled;
  final ValueChanged<String> onTextChanged;
  final ValueChanged<int> onScaleChanged;

  const QuestionnaireQuestionStep({
    super.key,
    required this.questionWithAnswers,
    required this.draft,
    required this.onOptionToggled,
    required this.onTextChanged,
    required this.onScaleChanged,
  });

  @override
  Widget build(BuildContext context) {
    final question = questionWithAnswers.question;
    final type = question.type;

    String? helper;
    if (type == QuestionType.singleSelect) {
      helper = context.tr.questionnaire_select_one;
    } else if (type == QuestionType.multipleSelect) {
      helper = context.tr.questionnaire_select_one_or_more;
    }

    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.question,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w800,
              color: context.onSurface,
              height: 1.25,
            ),
          ),
          if (helper != null) ...[
            SizedBox(height: 10.h),
            Text(
              helper,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: context.onSurfaceVariant,
              ),
            ),
          ],
          SizedBox(height: 18.h),
          _buildAnswerWidget(context, question),
        ],
      ),
    );
  }

  Widget _buildAnswerWidget(BuildContext context, Question question) {
    switch (question.type) {
      case QuestionType.singleSelect:
        final selectedId = draft?.mapOrNull(
          singleSelect: (d) => d.possibleAnswerId,
        );
        return Column(
          children: [
            for (final a in questionWithAnswers.possibleAnswers) ...[
              AnswerOptionTile(
                text: a.answer,
                selected: selectedId == a.id,
                isMulti: false,
                onTap: () => onOptionToggled(a.id, true),
              ),
              SizedBox(height: 12.h),
            ],
          ],
        );
      case QuestionType.multipleSelect:
        final selectedIds =
            draft?.mapOrNull(multipleSelect: (d) => d.possibleAnswerIds) ??
            const <String>{};
        return Column(
          children: [
            for (final a in questionWithAnswers.possibleAnswers) ...[
              AnswerOptionTile(
                text: a.answer,
                selected: selectedIds.contains(a.id),
                isMulti: true,
                onTap: () => onOptionToggled(a.id, !selectedIds.contains(a.id)),
              ),
              SizedBox(height: 12.h),
            ],
          ],
        );
      case QuestionType.text:
        final text = draft?.mapOrNull(text: (d) => d.value) ?? '';
        return AnswerTextField(
          initialValue: text,
          hintText: context.tr.questionnaire_text_hint,
          onChanged: onTextChanged,
        );
      case QuestionType.scale:
        final value = draft?.mapOrNull(scale: (d) => d.value) ?? 5;
        return AnswerScaleSlider(value: value, onChanged: onScaleChanged);
    }
  }
}
