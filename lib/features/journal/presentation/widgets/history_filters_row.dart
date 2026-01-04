import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';
import 'mood_filter.dart';

class HistoryFiltersRow extends StatelessWidget {
  final TextEditingController searchController;
  final JournalMood? selectedMood;
  final ValueChanged<String> onSearchChanged;
  final ValueChanged<JournalMood?> onMoodChanged;
  final VoidCallback onClear;

  const HistoryFiltersRow({
    super.key,
    required this.searchController,
    required this.selectedMood,
    required this.onSearchChanged,
    required this.onMoodChanged,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 360;

        final search = TextField(
          controller: searchController,
          onChanged: onSearchChanged,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'search content...',
          ),
        );

        final mood = MoodFilter(
          selected: selectedMood,
          onChanged: onMoodChanged,
        );

        final clear = IconButton(
          tooltip: 'Clear filters',
          onPressed: onClear,
          icon: const Icon(Icons.close),
        );

        if (isNarrow) {
          return Column(
            children: [
              search,
              SizedBox(height: 10.h),
              Row(
                children: [
                  Expanded(child: mood),
                  SizedBox(width: 6.w),
                  clear,
                ],
              ),
            ],
          );
        }

        return Row(
          children: [
            Expanded(child: search),
            SizedBox(width: 10.w),
            SizedBox(width: 140.w, child: mood),
            SizedBox(width: 6.w),
            clear,
          ],
        );
      },
    );
  }
}
