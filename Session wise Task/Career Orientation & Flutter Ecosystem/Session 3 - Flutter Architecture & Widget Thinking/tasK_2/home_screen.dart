import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String message = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style:  TextStyle(fontSize: 24),
            ),
             SizedBox(height: 10),
             Text(
              'Press the button below',
              style: TextStyle(fontSize: 18),
            ),
             SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  message = 'Updated!';
                });
              },
              child:  Text('Update Text'),
            ),
          ],
        ),
      ),
    );
  }
}
