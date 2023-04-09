import 'package:flutter/material.dart';
import 'package:ping_project/constants/app_colors.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
          shape:  const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),),
        child: ListTile(
          leading: CircleAvatar(
            child: Center(
              child: Image.asset("assets/images/person_avatar.png"),
            ),
          ),
          title:  Text(
            "The Audit",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: AppColors.kBlueColor),
          ),
          subtitle: Text(
            "Started following you 79days ago",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10,color: AppColors.kCardSubtitleColor),
          ),
        ),
      ),
    );
  }
}
