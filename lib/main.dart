import 'package:flutter/material.dart';

import 'screens/tiktok_video/ticktok_video.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:VideoApp(),

    );
  }
}
