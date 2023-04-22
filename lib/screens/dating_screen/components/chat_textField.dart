import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.kBlueColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 10.0),
        hintText: 'Type a message',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            width: 0.8,
            color: Colors.grey.shade400,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            width: 0.8,
            color: Colors.grey.shade300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            width: 0.8,
            color: AppColors.kBlueColor,
          ),
        ),
        prefixIcon: IconButton(
          icon:  Icon(Icons.emoji_emotions,color: AppColors.kBlueColor,),
          onPressed: () {},
        ),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: AppColors.kBlueColor,
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: AppColors.kWhiteColor,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: AppColors.kBlueColor,
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                icon: Icon(
                  Icons.mic,
                  color: AppColors.kWhiteColor,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: AppColors.kBlueColor,
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                icon: Icon(
                  Icons.send,
                  color: AppColors.kWhiteColor,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
