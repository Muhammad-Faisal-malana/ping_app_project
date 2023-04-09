import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_colors.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        toolbarHeight: 80,
        backgroundColor: AppColors.kWhiteColor,
        centerTitle: true,
        title: Text(
          'Market Place',
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
              padding:  const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assets/icons/plus-square.svg",),
            ),
          ),

        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),

      ),
      body: Container(),
    );

  }
}
