import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireBottomNav extends StatelessWidget {
  final bool canGoBack;
  final String backLabel;
  final String nextLabel;
  final bool isNextEnabled;
  final VoidCallback? onBack;
  final VoidCallback onNext;

  const QuestionnaireBottomNav({
    super.key,
    required this.canGoBack,
    required this.backLabel,
    required this.nextLabel,
    required this.isNextEnabled,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 52.h,
            child: ElevatedButton(
              onPressed: isNextEnabled ? onNext : null,
              child: Text(nextLabel),
            ),
          ),
          if (canGoBack) ...[
            SizedBox(height: 8.h),
            TextButton.icon(
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back_ios_new, size: 16),
              label: Text(backLabel),
            ),
          ],
        ],
      ),
    );
  }
}
