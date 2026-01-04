import 'package:flutter/material.dart';
import 'package:ruh/shared/widgets/app_empty_state.dart';
import 'home_card.dart';

class NoUpcomingSessionCard extends StatelessWidget {
  final VoidCallback onBrowseTherapists;
  final VoidCallback onViewSessions;

  const NoUpcomingSessionCard({
    super.key,
    required this.onBrowseTherapists,
    required this.onViewSessions,
  });

  @override
  Widget build(BuildContext context) {
    return HomeCard(
      padding: EdgeInsets.zero,
      child: AppEmptyState(
        compact: true,
        icon: Icons.event_available_outlined,
        title: 'no upcoming session',
        subtitle:
            'when you book a session, it will show up here so you can join on time.',
        primaryActionLabel: 'find a therapist',
        onPrimaryAction: onBrowseTherapists,
        secondaryActionLabel: 'view sessions',
        onSecondaryAction: onViewSessions,
      ),
    );
  }
}
