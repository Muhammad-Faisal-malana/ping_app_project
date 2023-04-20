import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../constants/app_colors.dart';
import 'components/age_gender_container.dart';
import 'components/bio_container.dart';
import 'components/photos.dart';

class UserProfileWithSlider extends StatefulWidget {
  const UserProfileWithSlider({Key? key}) : super(key: key);

  @override
  State<UserProfileWithSlider> createState() => _UserProfileWithSliderState();
}

class _UserProfileWithSliderState extends State<UserProfileWithSlider> {
  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();
    int currentIndex = 0;

    List imageList = [
      {"id": 1, "image_path": 'assets/images/user_profile_background_img.png'},
      {"id": 2, "image_path": 'assets/images/user_profile_background_img.png'},
      {"id": 3, "image_path": 'assets/images/user_profile_background_img.png'}
    ];
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  items: imageList
                      .map(
                        (item) => ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          child: Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: 403,
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
                Positioned(
                    left: 37,
                    top: 64,
                    child: SvgPicture.asset(
                        "assets/icons/back_arrow_dating_screen.svg")),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                          width: 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? Colors.blue
                                  : Colors.white),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                Positioned(
                  bottom: 25,
                  left: 0,
                  right: 0,
                  child: Center(child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Adriane, 24",style: TextStyle(color: AppColors.kWhiteColor,fontSize: 31,),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "65 km,  Fashion Model",style: TextStyle(color: AppColors.kWhiteColor,fontSize: 15,),
                      ),
                    ],
                  ),),
                ),

              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AgeGenderContainer(
                  bottomTitle: "Age",
                  iconAddress: "assets/icons/calendar.svg",
                  text: '25',
                  color: AppColors.kBlueColor,
                ),
                SvgPicture.asset("assets/icons/message.svg"),
                AgeGenderContainer(
                  bottomTitle: "Gender",
                  iconAddress: "assets/icons/transgender.svg",
                  text: 'Female',
                  color: AppColors.kDarkBlueColor,
                ),
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
