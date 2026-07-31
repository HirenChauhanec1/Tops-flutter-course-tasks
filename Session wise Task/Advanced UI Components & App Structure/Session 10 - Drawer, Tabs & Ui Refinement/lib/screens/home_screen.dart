import 'package:flutter/material.dart';
import 'package:insta_clone/enums/tab_bar_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 18),
            child: TabBar(
              labelColor: Theme.of(context).primaryColor,
              indicatorColor: Theme.of(context).primaryColor,
              tabs: TabBarItem.values
                  .map(
                    (tabBarItem) => Tab(
                      icon: Icon(tabBarItem.icon),
                      text: tabBarItem.label,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        body: TabBarView(
          children: TabBarItem.values
              .map(
                (tabBarItem) =>
                    tabScreen(context, tabBarItem.icon, tabBarItem.label),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget tabScreen(BuildContext context, IconData icon, String text) {

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(height: 16),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
