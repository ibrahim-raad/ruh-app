part of '../schedule_session_page.dart';

class _NoAvailableTimesCard extends StatelessWidget {
  final String subtitle;

  const _NoAvailableTimesCard({this.subtitle = 'try a different date'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: context.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Row(
        children: [
          Container(
            width: 44.w,
            height: 44.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.surfaceContainer,
              border: Border.all(color: context.outline),
            ),
            child: Icon(
              Icons.event_busy_outlined,
              color: context.onSurfaceVariant,
              size: 22.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'no available times',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: context.onSurface,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: context.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
