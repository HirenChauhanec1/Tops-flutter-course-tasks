import 'package:flutter/material.dart';

class SongTitleCard extends StatelessWidget {
  const SongTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Humnava',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6),
        Text(
          'Papon',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}