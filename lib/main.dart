import 'package:flutter/material.dart';
import 'package:ping_project/screens/auth/views/otp_view/otp_screen.dart';
import 'package:ping_project/screens/dating_screen/matches.dart';
import 'package:ping_project/screens/dating_screen/matches_one.dart';
import 'package:ping_project/screens/dating_screen/user_profile.dart';
import 'package:ping_project/screens/dating_screen/user_profile_1.dart';
import 'package:ping_project/screens/dating_screen/user_profile_2_slider.dart';
import 'package:ping_project/screens/splash/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Matches(),
    );
  }
}
