import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ping_project/constants/app_colors.dart';
import 'package:ping_project/screens/dating_screen/components/age_gender_container.dart';

import '../../widgets/common_button.dart';
import 'components/bio_container.dart';
import 'components/photos.dart';

class UserProfile_1 extends StatelessWidget {
  const UserProfile_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Container(
              height: 290,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.kGreyColor,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/user_profile_background_img.png",
                      )),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )),
              child: Stack(
                children: [
                  Positioned(
                      left: 37,
                      top: 64,
                      child: SvgPicture.asset(
                          "assets/icons/back_arrow_dating_screen.svg")),
                  Positioned(
                      top: 40,
                      right: 35,
                      child: SvgPicture.asset(
                          "assets/icons/app_bar_drawer.svg")),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AgeGenderContainer(
                  bottomTitle: "Age",
                  iconAddress: "assets/icons/calendar.svg",
                  text: '25',
                  color: AppColors.kBlueColor,
                ),
                AgeGenderContainer(
                  bottomTitle: "Gender",
                  iconAddress: "assets/icons/transgender.svg",
                  text: 'Female',
                  color: AppColors.kDarkBlueColor,
                ),
                SvgPicture.asset("assets/icons/edit_square.svg"),
              ],
            ),
            const BioContainer(
              text:
              "Bio will be allowed to write up to twenty nine \nwords It is a short summary that user can\nwrite about your self",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/photo.svg"),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Photos",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Photos(isCamera: false),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 14),
            //   child: CommonButton(color: AppColors.kBlueColor,txt: "Save",onPress: (){},),
            // ),
          ],
        ),
      ),
    );
  }
}
