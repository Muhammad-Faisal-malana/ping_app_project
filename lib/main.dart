import 'package:flutter/material.dart';
import 'package:ping_project/screens/chat_screen/chat_screen.dart';
import 'package:ping_project/screens/create_post/create_post.dart';
import 'package:ping_project/screens/home/bottom_nav_bar.dart';
import 'package:ping_project/screens/home/home_screen.dart';
import 'package:ping_project/screens/auth/views/login_view/initial_login_screen.dart';
import 'package:ping_project/screens/auth/views/login_view/login_via_phone_number.dart';
import 'package:ping_project/screens/auth/views/otp_view/otp_screen.dart';

import 'package:ping_project/screens/auth/views/sign_up_view/sign_up_screen.dart';
import 'package:ping_project/screens/market_place.dart';
import 'package:ping_project/screens/splash/splash_screen.dart';
import 'package:ping_project/screens/videos/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:CreatePost(),

    );
  }
}
