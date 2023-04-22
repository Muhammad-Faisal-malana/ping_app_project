import 'package:flutter/material.dart';
import 'package:ping_project/constants/app_colors.dart';

import '../../widgets/common_app_bar.dart';
import 'components/chat_textField.dart';
import 'components/user_chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 2,
          toolbarHeight: 70,
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.kBlueColor,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Text(
                "Janet Fowler",
                style: TextStyle(color: AppColors.kBlueColor, fontSize: 16),
              ),
              Text(
                "Online now",
                style: TextStyle(color: AppColors.kBlueColor, fontSize: 11),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.phone,
                color: AppColors.kBlueColor,
              ),
            )
          ]),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, i) {
              return Padding(
                padding: EdgeInsets.only(
                    left: i.isOdd ? 50 : 15,
                    bottom: 20,
                    right: i.isEven ? 50 : 15),
                child: NoteChatCard(
                  containerColor:
                      i.isOdd ? AppColors.kBlueColor : Colors.grey.shade300,
                  textColor: i.isOdd ? Colors.white : Colors.black,
                ),
              );
            }),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              height: 55,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFFD9D9D9)),
              padding: const EdgeInsets.all(5),
              child: ChatTextField()),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

// Container(
// alignment: Alignment.center,
// width: 40.0,
// height: 40.0,
// decoration: const BoxDecoration(
// shape: BoxShape.circle,
// color: Color(0xFF3776A5),
// ),
// child: const Icon(
// Icons.mic,
// color: Colors.white,
// )),
