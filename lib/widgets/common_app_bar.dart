import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_colors.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool? showIcons;
  final Widget? leadingIcon;
  final String? titleText;
  final double? height;
  final Color? color;
  final TextStyle? style;
  final Widget? widget;
  CommonAppBar(
      {super.key,
      this.leadingIcon,
      this.titleText,
      this.height,
      this.color,
      this.style,
      this.widget,
      this.showIcons});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(155), // Set this height
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right  horizontally
                  1.0, // Move to bottom 5 Vertically
                ),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset("assets/icons/small_logo.svg")),
                    //
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 117,
                        height: 34,
                        decoration: BoxDecoration(
                            color: AppColors.kOffWhiteColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                      "assets/icons/search.svg")),
                              GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                      "assets/icons/audio.svg"))
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 37,
                        height: 37,
                        decoration: BoxDecoration(
                            color: AppColors.kOffWhiteColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: SvgPicture.asset(
                                "assets/icons/notification.svg")),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 37,
                        height: 37,
                        decoration: BoxDecoration(
                            color: AppColors.kOffWhiteColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: SvgPicture.asset("assets/icons/camera.svg")),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: AppColors.kOffWhiteColor,
                        radius: 17,
                        child: Image.asset(
                          "assets/images/person_avatar.png",
                          height: 37,
                          width: 37,
                        ),
                      ),
                    ),
                  ],
                ),
                showIcons == true
                    ? const Divider(thickness: 1)
                    : const SizedBox(),
                showIcons == true
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: buildButtons(
                                image: "assets/icons/camera.svg",
                                title: 'Image'),
                          ),
                          Expanded(
                            child: buildButtons(
                                image: "assets/icons/video.svg",
                                title: 'Video'),
                          ),
                          Expanded(
                              child: buildButtons(
                                  image: "assets/icons/view.svg",
                                  title: 'Live')),
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ));
  }

  GestureDetector buildButtons(
      {VoidCallback? onTap, String? image, String? title}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 34,
        decoration: BoxDecoration(
            color: AppColors.kOffWhiteColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(image ?? ''),
              Text(
                title ?? '',
                style: TextStyle(color: AppColors.kGreyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  @override
  Size get preferredSize => Size.fromHeight(showIcons == true ? 160 : 117);
}
