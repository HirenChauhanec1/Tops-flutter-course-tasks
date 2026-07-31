import 'package:flutter/material.dart';
import 'package:insta_clone/enums/bottom_nav_item.dart';
import 'package:insta_clone/ui_helper/ui_color.dart';

void main() {
  runApp(const ServiceHubApp());
}

class ServiceHubApp extends StatelessWidget {
  const ServiceHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: UIColor.appColor,
        textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 20)),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  Widget currentScreen = DrawerNavItem.values.first.currentScreen;

  GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        title: Text(DrawerNavItem.values[currentIndex].label),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: currentScreen,
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Tops Technologies",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              accountEmail: Text(
                "tops@gmail.com",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              decoration: BoxDecoration(color: Colors.transparent),
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
            ...DrawerNavItem.values.indexed.map(
              (drawerNavItem) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = drawerNavItem.$2.currentScreen;
                    currentIndex = drawerNavItem.$1;
                    drawerKey.currentState!.closeDrawer();
                  });
                },
                child: ListTile(
                  leading: Icon(
                    drawerNavItem.$1 == currentIndex
                        ? drawerNavItem.$2.activeIcon
                        : drawerNavItem.$2.icon,
                    color: drawerNavItem.$1 == currentIndex
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                  ),
                  title: Text(
                    drawerNavItem.$2.label,
                    style: TextStyle(
                      color: drawerNavItem.$1 == currentIndex
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentScreen = DrawerNavItem.values[index].currentScreen;
            currentIndex = index;
          });
        },
        items: DrawerNavItem.values
            .map(
              (drawerNavItem) => BottomNavigationBarItem(
                icon: Icon(drawerNavItem.icon),
                label: drawerNavItem.label,
                activeIcon: Icon(drawerNavItem.activeIcon),
              ),
            )
            .toList(),
      ),
    );
  }
}
