import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          "assets/icons/users-three-Filled_1_.svg",width: 10,height: 10,
        ),
        centerTitle: true,
        // toolbarHeight: 160,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          "Chat",
          style: TextStyle(
            color: Constants.kBlueColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            // fontFamily: "PoppinsBold"
          ),
        ),
        actions: [SvgPicture.asset("assets/icons/plus-square.svg")],
        
        bottom: TabBar(tabs: [Text("Messages"),Text("Messages"),],),
      ),
    );
  }
}
