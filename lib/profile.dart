import 'package:flutter/material.dart';

class Profile_s extends StatefulWidget {
  const Profile_s({super.key});

  @override
  State<Profile_s> createState() => _Profile_sState();
}

class _Profile_sState extends State<Profile_s> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("profile Page"),
      ),
    );
  }
}
