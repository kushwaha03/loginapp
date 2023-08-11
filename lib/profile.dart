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
          CircleAvatar(
            backgroundColor: Color(0xffE6E6E6),
            radius: 30,
            child: Icon(
              Icons.person,
              color: Color(0xffCCCCCC),
            ),
          ),
          Container(
            height: 196.0,
            width: 196.0,
            padding: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
            ),
            child: Center(
              child: Image.asset('assets/images/icons8-logo-96.png'),
            ),
          ),
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
