import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import '../home/bottom_nav_bar.dart';
import 'component/chat_card.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Specify the number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: AppColors.kWhiteColor,
          centerTitle: true,

          leading: InkWell(
            onTap: () {

            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset("assets/icons/users-three-Filled.svg",),
            ),
          ),
          title: Text(
            'Chat',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.kBlueColor,
            ),
          ),
          actions: [

             InkWell(
               onTap: () {

               },
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SvgPicture.asset("assets/icons/plus-square.svg",),
               ),
             ),

          ],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          bottom: TabBar(
            indicatorColor: AppColors.kBlueColor,
            tabs: [
              Tab(
                child: Text(
                  'Messages',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kBlueColor),
                ),
              ),
              Tab(
                child: Text(
                  'Broadcast',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kBlueColor),
                ),
              ),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            // Add the content for Tab 1 here
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {

            return const MessageCard();
          },),
            // Add the content for Tab 2 here
            const Center(
              child: Text('BroadCast'),
            ),
          ],
        ),
      ),
    );
  }
}
