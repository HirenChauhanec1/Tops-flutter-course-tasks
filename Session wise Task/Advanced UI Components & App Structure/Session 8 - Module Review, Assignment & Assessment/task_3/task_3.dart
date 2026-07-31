import 'package:flutter/material.dart';
import 'package:insta_clone/screens/offer_screen.dart';
import 'package:insta_clone/screens/settings_screen.dart';

import 'screens/my_wallet_screen.dart';

enum DrawerScreenItem {
  myWallet(
    label: "My Wallet",
    icon: Icons.wallet,
    currentScreen: MyWalletScreen(),
  ),
  offer(label: "Offer", icon: Icons.local_offer, currentScreen: OffersScreen()),
  settings(
    label: "Settings",
    icon: Icons.settings,
    currentScreen: SettingsScreen(),
  );

  final String label;
  final IconData icon;
  final Widget currentScreen;

  const DrawerScreenItem({
    required this.label,
    required this.icon,
    required this.currentScreen,
  });
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget currentScreen = DrawerScreenItem.values.first.currentScreen;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Delivery Dashboard"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text("Dashboard Screen", style: TextStyle(fontSize: 25)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Tops Technologies"),
              accountEmail: Text("tops@gmail.com"),
              decoration: BoxDecoration(color: Colors.blue),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xFF11AAE3),
                radius: 35,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/tops_logo.png"),
                ),
              ),
            ),
            ...DrawerScreenItem.values.map(
              (drawerScreenItem) => ListTile(
                leading: Icon(drawerScreenItem.icon),
                title: Text(drawerScreenItem.label),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => drawerScreenItem.currentScreen,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
