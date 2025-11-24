import 'package:flutter/material.dart';

class TournamentCard extends StatelessWidget {
  final String bannerPath;

  const TournamentCard({super.key, required this.bannerPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1D),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Banner image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              bannerPath,
              fit: BoxFit.cover,
              errorBuilder: (a, b, c) {
                return Container(
                  height: 160,
                  color: Colors.grey[900],
                  child: const Center(
                    child: Icon(Icons.image, size: 40, color: Colors.white30),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "BATTLE ROYAL  •  Erangle",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
