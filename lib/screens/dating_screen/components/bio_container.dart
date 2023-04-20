import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_colors.dart';

class BioContainer extends StatelessWidget {
  const BioContainer({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 27),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.kBlueColor),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/bio.svg",
                ),
                const Text(
                  "Bio",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Divider(
                // thickness: 1,
                color: AppColors.kBlueColor,
              ),
            ),
            Text(text,

              textAlign: TextAlign.center,

              style: TextStyle(color: AppColors.kGreyColor),
            ),
          ],
        ),
      ),
    );
  }
}
