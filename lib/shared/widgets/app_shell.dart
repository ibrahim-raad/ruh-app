import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShellTabController {
  final void Function(int index) goToIndex;

  const ShellTabController({required this.goToIndex});

  void goToHome() => goToIndex(0);
  void goToJournal() => goToIndex(1);
  void goToSessions() => goToIndex(2);
  void goToProfile() => goToIndex(3);
}

class ShellTabScope extends InheritedWidget {
  final ShellTabController controller;

  const ShellTabScope({
    super.key,
    required this.controller,
    required super.child,
  });

  static ShellTabController of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<ShellTabScope>();
    assert(
      scope != null,
      'ShellTabScope not found. Make sure the widget tree is under AppShell.',
    );
    return scope!.controller;
  }

  @override
  bool updateShouldNotify(covariant ShellTabScope oldWidget) =>
      oldWidget.controller != controller;
}

class AppShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AppShell({super.key, required this.navigationShell});

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = ShellTabController(goToIndex: _onTap);
    return Scaffold(
      body: ShellTabScope(controller: controller, child: navigationShell),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Journal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Sessions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
