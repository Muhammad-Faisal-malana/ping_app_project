import 'package:flutter/material.dart';

class NoteChatCard extends StatelessWidget {
  final double? border;
  final Color? containerColor;
  final Color? textColor;
  final Color? titleColor;
  const NoteChatCard(
      {super.key,
      this.border,
      this.containerColor,
      this.textColor,
      this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          color: containerColor ??  Colors.grey.shade300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Text(
            "Lorem ipsum dolor sit amet consectetur adipiscing elit.lor sit amet consectetLorem ipsum dolor sit amet consectetur adipiscing ",
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: 14,

            ),
          ),
          Text(
            '08:09',
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
