import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_esports),
          label: "esports",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        BottomNavigationBarItem(
          icon: Icon(Icons.leaderboard),
          label: "leaderboard",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: "group"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
      ],
    );
  }
}
