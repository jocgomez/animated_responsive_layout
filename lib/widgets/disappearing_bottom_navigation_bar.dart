import 'package:animated_responsive_layout/destinations.dart';
import 'package:flutter/material.dart';

class DisappearingBottomNavigationBar extends StatelessWidget {
  const DisappearingBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 0,
      backgroundColor: Colors.white,
      destinations: destinations.map<NavigationDestination>((d) {
        return NavigationDestination(
          icon: Icon(d.icon),
          label: d.label,
        );
      }).toList(),
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}
