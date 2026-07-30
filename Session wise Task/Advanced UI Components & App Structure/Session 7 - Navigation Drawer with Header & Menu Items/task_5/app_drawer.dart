import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
   const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsetsGeometry.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName:  Text(
              "Tops Technologies",
              style: TextStyle(color: Colors.blue),
            ),
            accountEmail:  Text(
              "tops@gmail.com",
              style: TextStyle(color: Colors.blue),
            ),
            decoration:  BoxDecoration(
              color: Colors.transparent,
            ),
            currentAccountPicture:  CircleAvatar(
              backgroundColor: Color(0xFF11AAE3),
              radius: 35,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  "assets/images/tops_logo.png",
                ),
              ),
            ),
          ),

          ListTile(
            leading:  Icon(Icons.shopping_bag_outlined),
            title:  Text("My Orders"),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading:  Icon(Icons.favorite_border),
            title:  Text("Favourites"),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading:  Icon(Icons.logout),
            title:  Text("Logout"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}