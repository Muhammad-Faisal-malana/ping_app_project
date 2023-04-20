import 'package:flutter/material.dart';


import 'package:ping_project/screens/dating_screen/matches_one.dart';
import 'package:ping_project/screens/dating_screen/user_chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicketNotes(),
    );
  }
}
