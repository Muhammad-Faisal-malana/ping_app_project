import 'package:flutter/material.dart';
import 'package:ping_project/screens/chat_screen.dart';
import 'package:ping_project/screens/create_post.dart';
import 'package:ping_project/screens/home/bottom_nav_bar.dart';
import 'package:ping_project/screens/home/home_screen.dart';
import 'package:ping_project/screens/login_via_phone_number.dart';
import 'package:ping_project/screens/otp_screen.dart';

import 'package:ping_project/screens/sign_up_screen.dart';
import 'package:ping_project/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:MyNavigationBar(),

    );
  }
}
