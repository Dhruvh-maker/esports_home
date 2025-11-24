import 'package:flutter/material.dart';
import '../../widgets/top_header.dart';
import '../../widgets/game_mode_card.dart';
import '../../widgets/tournament_card.dart';
import '../../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top Header (1500 ELO + BGMI Selector)
            const TopHeader(),

            // Categories Row
            SizedBox(
              height: 110,
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  _category("Arena"),
                  const SizedBox(width: 12),
                  _category("Zenith League"),
                  const SizedBox(width: 12),
                  _category("Championship", selected: true),
                  const SizedBox(width: 12),
                  _category("More"),
                ],
              ),
            ),

            // Tabs Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Text(
                    "Esports",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("|", style: TextStyle(color: Colors.white38)),
                  SizedBox(width: 10),
                  Text(
                    "Registered Matches",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Game Modes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Expanded(
                    child: GameModeCard(
                      title: "Sniper",
                      subtitle: "Ongoing Arena: 20",
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: GameModeCard(
                      title: "Assault",
                      subtitle: "Ongoing Arena: 10",
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Match date
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Match Date — Sun Oct 05 | 2:30pm",
                style: TextStyle(color: Colors.white70),
              ),
            ),

            const SizedBox(height: 10),

            // Tournament Cards (Scrollable)
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: const [
                  TournamentCard(bannerPath: "assets/banners/indicus2.png"),
                  SizedBox(height: 14),
                  TournamentCard(bannerPath: "assets/banners/gwcsgem.png"),
                  SizedBox(height: 14),
                  TournamentCard(bannerPath: "assets/banners/duo.png"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  // category UI item
  Widget _category(String text, {bool selected = false}) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: selected ? Colors.pink : Colors.grey[900],
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        const SizedBox(height: 6),
        Text(text, style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}
