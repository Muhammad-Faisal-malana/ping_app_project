import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Photos extends StatelessWidget {
  Photos({Key? key, required this.isCamera}) : super(key: key);
  late bool isCamera;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: SizedBox(
        height: 340,
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(

                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/user_profile_background_img.png"),
                        )),
                  ),
                  isCamera? Positioned(
                    bottom: 15,
                    left: 15,
                    child: SvgPicture.asset(
                        "assets/icons/camera_dating_screen.svg"),)
                      :SizedBox.shrink(),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(40),
                            ),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/photo_dating_1.png",
                              ),
                            ),
                          ),
                        ),
                        isCamera? Positioned(
                            bottom: 15,
                            right: 15,
                            child: SvgPicture.asset(
                                "assets/icons/camera_dating_screen.svg"),)
                            :SizedBox.shrink(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(40),
                              ),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/photo_dating_2.png",
                                  ))),
                        ),
                        isCamera
                            ? Positioned(
                          bottom: 15,
                                right: 15,
                                child: SvgPicture.asset(
                                    "assets/icons/camera_dating_screen.svg"))
                            : const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
