import 'package:flutter/material.dart';
import 'login.dart';
import '../profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.email});

  final String email;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String _title = '';
  var appBarTitleText = new Text("Home");
  @override
  initState() {
    _title = 'Home Page';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Used for removing back buttoon.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: appBarTitleText,
        actions: [
          FloatingActionButton(
            onPressed: () => Navigator.pop(context, true),
            child: Icon(Icons.logout),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          )
        ],
      ),
      body: const [
        Center(
          child: Text(
            'Home 🏠',
          ),
        ),
        Center(
          child: Text(
            'Search 🔍',
          ),
        ),
        ProfilePage()
      ][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          fixedColor: Colors.green,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          onTap: (int indexOfItem) {
            setState(() => _currentIndex = indexOfItem);
            switch (indexOfItem) {
              case 0:
                {
                  appBarTitleText = new Text("Home");
                }
                break;
              case 1:
                {
                  appBarTitleText = new Text("Search");
                }
                break;
              case 2:
                {
                  appBarTitleText = new Text("Profile");
                }
                break;
            }
          }),
    );
  }
}
