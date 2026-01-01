import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/shared/widgets/app_shell.dart';
import '../widgets/journal_calendar_card.dart';
import '../widgets/journal_header.dart';
import '../widgets/mood_picker.dart';
import '../widgets/reflection_input_card.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  late DateTime _selectedDay;
  late DateTime _focusedDay;
  JournalMood? _mood;
  final _controller = TextEditingController();

  DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);

  @override
  void initState() {
    super.initState();
    final today = _dateOnly(DateTime.now());
    _selectedDay = today;
    _focusedDay = today;
    _controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _canSave => _mood != null || _controller.text.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final tab = ShellTabScope.of(context);
    final lastSelectable = _dateOnly(DateTime.now());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 24.h),
          child: Column(
            children: [
              const JournalHeader(),
              SizedBox(height: 18.h),
              JournalCalendarCard(
                focusedDay: _focusedDay,
                selectedDay: _selectedDay,
                lastSelectableDay: lastSelectable,
                onFocusedDayChanged: (d) => setState(() => _focusedDay = d),
                onSelectedDayChanged: (d) => setState(() => _selectedDay = d),
              ),
              SizedBox(height: 18.h),
              MoodPicker(
                selected: _mood,
                onSelected: (m) => setState(() => _mood = m),
              ),
              SizedBox(height: 18.h),
              ReflectionInputCard(
                controller: _controller,
                charCount: _controller.text.characters.length,
              ),
              SizedBox(height: 18.h),
              SizedBox(
                width: double.infinity,
                height: 52.h,
                child: ElevatedButton(
                  onPressed: _canSave
                      ? () {
                          AppToast.showSuccess(context, 'Saved');
                          tab.goToHome();
                        }
                      : null,
                  child: const Text('save reflection'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
