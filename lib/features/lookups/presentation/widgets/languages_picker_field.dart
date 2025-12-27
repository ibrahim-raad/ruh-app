import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/features/lookups/presentation/widgets/languages_picker_bottom_sheet.dart';

class LanguagesPickerField extends StatelessWidget {
  final List<LanguageSelection> value;
  final ValueChanged<List<LanguageSelection>> onChanged;

  const LanguagesPickerField({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final primary = value
        .where((e) => e.isPrimary)
        .map((e) => e.language)
        .firstOrNull;

    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: () async {
        final selected = await LanguagesPickerBottomSheet.show(
          context,
          initialSelections: value,
        );
        if (selected != null) onChanged(selected);
      },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: context.tr.languages,
          prefixIcon: const Icon(Icons.translate),
        ),
        child: value.isEmpty
            ? Text(context.tr.select_languages)
            : Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: value.map((s) {
                  final isPrimary = primary?.id == s.language.id;
                  return Chip(
                    label: Text(
                      isPrimary
                          ? '${s.language.name} (${context.tr.primary})'
                          : s.language.name,
                    ),
                  );
                }).toList(),
              ),
      ),
    );
  }
}

extension _FirstOrNullX<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
