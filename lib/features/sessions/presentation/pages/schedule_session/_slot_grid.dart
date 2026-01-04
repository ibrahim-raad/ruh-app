part of '../schedule_session_page.dart';

class _SlotGrid extends StatelessWidget {
  final List<TherapistAvailabilityCalendarSlotOutput> slots;
  final TherapistAvailabilityCalendarSlotOutput? selected;
  final String Function(String isoStart) formatLabel;
  final ValueChanged<TherapistAvailabilityCalendarSlotOutput> onSelected;
  final String? Function(AvailabilityCalendarSlotReason? reason) reasonLabel;

  const _SlotGrid({
    required this.slots,
    required this.selected,
    required this.formatLabel,
    required this.onSelected,
    required this.reasonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        const columns = 2;
        final spacing = 12.w;
        final width = (c.maxWidth - spacing) / columns;

        return Wrap(
          spacing: spacing,
          runSpacing: 12.h,
          children: [
            for (final s in slots)
              SizedBox(
                width: width,
                height: 44.h,
                child: _TimeSlotButton(
                  label: formatLabel(s.start),
                  subtitle: s.bookable ? null : reasonLabel(s.reason),
                  enabled: s.bookable,
                  selected: selected?.start == s.start,
                  onTap: () => onSelected(s),
                ),
              ),
          ],
        );
      },
    );
  }
}
