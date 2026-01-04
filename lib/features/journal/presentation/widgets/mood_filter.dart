import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';

class MoodFilter extends StatelessWidget {
  final JournalMood? selected;
  final ValueChanged<JournalMood?> onChanged;

  const MoodFilter({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final items = <DropdownMenuItem<JournalMood?>>[
      const DropdownMenuItem(value: null, child: Text('All')),
      for (final m in JournalMood.values)
        DropdownMenuItem(value: m, child: Text(m.name)),
    ];

    return SizedBox(
      width: 120.w,
      child: DropdownButtonFormField<JournalMood?>(
        initialValue: selected,
        isExpanded: true,
        items: items,
        onChanged: onChanged,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.filter_alt_outlined),
        ),
      ),
    );
  }
}
