import 'package:flutter/material.dart';

import '../constants/constants.dart';
class CommonButton extends StatelessWidget {
  const CommonButton({Key? key, required this.txt, required this.onPress, required this.color}) : super(key: key);
  final String? txt;
  final dynamic onPress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          backgroundColor: color,
        ),
        onPressed: onPress,
        child:  Text(
          txt!,
          style:
          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
