import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_colors.dart';

class AgeGenderContainer extends StatelessWidget {
  AgeGenderContainer(
      {Key? key,
      required this.iconAddress,
      required this.bottomTitle,
      required this.text,
      required this.color})
      : super(key: key);
  final String iconAddress;
  final String bottomTitle;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          height: 95,
          width: 91,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: color),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(iconAddress),
              SizedBox(height: 10,),
              Text(
                text,
                style: TextStyle(color: AppColors.kWhiteColor),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            bottomTitle,
            style: TextStyle(color: AppColors.kGreyColor),
          ),
        ),
      ],
    );
  }
}
