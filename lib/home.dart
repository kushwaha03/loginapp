import 'package:flutter/material.dart';
import 'login.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.email});

  final String email;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Used for removing back buttoon.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Page'),
        actions: [
          FloatingActionButton(
            onPressed: () => Navigator.pop(context, true),
            child: Icon(Icons.logout),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 60)),
          Text(widget.email),
          Text('welcome!'),
          Center(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {}),
    );
  }
}
