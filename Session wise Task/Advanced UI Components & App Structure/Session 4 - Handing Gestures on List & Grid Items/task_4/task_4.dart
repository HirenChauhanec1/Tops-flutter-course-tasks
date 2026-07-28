import 'package:flutter/material.dart';

class Team {
  String name;
  IconData logo;

  Team({required this.name, required this.logo});
}

class TeamGridScreen extends StatelessWidget {
  TeamGridScreen({super.key});

  final List<Team> teams = [
    Team(name: "Chennai Super Kings", logo: Icons.sports_cricket),
    Team(name: "Mumbai Indians", logo: Icons.sports_cricket),
    Team(name: "Royal Challengers Bengaluru", logo: Icons.sports_cricket),
    Team(name: "Kolkata Knight Riders", logo: Icons.sports_cricket),
    Team(name: "Rajasthan Royals", logo: Icons.sports_cricket),
    Team(name: "Sunrisers Hyderabad", logo: Icons.sports_cricket),
    Team(name: "Delhi Capitals", logo: Icons.sports_cricket),
    Team(name: "Punjab Kings", logo: Icons.sports_cricket),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IPL Teams")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: teams.length,
          itemBuilder: (context, index) {
            var team = teams[index];

            return GestureDetector(
              onHorizontalDragEnd: (details) {
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text('Added to Watchlist')),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(team.logo, size: 70, color: Colors.blue),
                    SizedBox(height: 12),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        team.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
