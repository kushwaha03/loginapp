import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false, // Used for removing back buttoon.
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: const Text('Home Page'),
      // ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 60)),
          Text('welcome!'),
          Text(
            'Profile 👤',
          ),
          Center(),
        ],
      ),
    );
  }
}
