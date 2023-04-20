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
          color: containerColor ?? const Color(0xFFD9D9D9)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(),
                  child: Image.asset('assets/images/person_avatar.png')),
              const SizedBox(
                width: 10,
              ),
              Text('Ali Khan',
                  style: TextStyle(
                    color: textColor ?? Colors.black,
                    fontSize: 18,
                      fontWeight: FontWeight.w500
                  )),
            ],
          ),
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
