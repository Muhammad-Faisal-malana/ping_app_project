import 'package:expandable_search_bar/expandable_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ping_project/constants/constants.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        // // statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        // // systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(155), // Set this height
          child: Container(
            decoration: BoxDecoration(
              color: Constants.kWhiteColor,
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
                SizedBox(height: 10,),
                  Row(

                    children: [
                      GestureDetector(
                          onTap: () {
                          },
                          child:
                              SvgPicture.asset("assets/icons/small_logo.svg")),
                      //
                      Spacer(),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          width: 117,
                          height: 34,
                          decoration: BoxDecoration(
                              color: Constants.kOffWhiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {

                                    },
                                    child: SvgPicture.asset("assets/icons/search.svg")),
                                GestureDetector(
                                    onTap: () {

                                    },
                                    child: SvgPicture.asset("assets/icons/audio.svg"))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12,),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          width: 37,
                          height: 37,
                          decoration: BoxDecoration(
                              color: Constants.kOffWhiteColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(child: SvgPicture.asset("assets/icons/notification.svg")),
                        ),
                      ),
                      SizedBox(width: 12,),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          width: 37,
                          height: 37,
                          decoration: BoxDecoration(
                              color: Constants.kOffWhiteColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(child: SvgPicture.asset("assets/icons/camera.svg")),
                        ),
                      ),
                      SizedBox(width: 12,),
            GestureDetector(
              onTap: () {

              },
              child: CircleAvatar(
                backgroundColor: Constants.kOffWhiteColor,
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
                  Divider(thickness: 1),
                  Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          width: 110,
                          height: 34,
                          decoration: BoxDecoration(
                              color: Constants.kOffWhiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset("assets/icons/camera.svg"),
                                Text("IMAGE",style: TextStyle(color: Constants.kGreyColor),),
                              ],
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          width: 110,
                          height: 34,
                          decoration: BoxDecoration(
                              color: Constants.kOffWhiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset("assets/icons/video.svg"),
                                Text("VIDEO",style: TextStyle(color: Constants.kGreyColor),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          width: 110,
                          height: 34,
                          decoration: BoxDecoration(
                              color: Constants.kOffWhiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset("assets/icons/view.svg",height: 15),
                                Text("LIVE",style: TextStyle(color: Constants.kGreyColor),),
                              ],
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        body: SingleChildScrollView(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
           children: [
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Container(width: 76,height: 134,decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),

                        // child: Image.asset("assets/images/pic_1.png",fit: BoxFit.fill),
                        ),
                      ),
                     const CircleAvatar(backgroundColor: Colors.green,minRadius: 15),
                    ],
                  ),

                 const SizedBox(width: 9,),
                 Container(width: 76,height: 134,decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(30)),

                   // child: Image.asset("assets/images/pic_1.png",fit: BoxFit.fill),
                 ),
                 SizedBox(width: 9,),
                 SizedBox(width: 9,),
                 SizedBox(width: 9,),
                 SizedBox(width: 9,), SizedBox(width: 9,),

                 Container(width: 76,height: 134,decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(30)),

                   // child: Image.asset("assets/images/pic_1.png",fit: BoxFit.fill),
                 ),
                 SizedBox(width: 9,),
                 Container(width: 76,height: 134,decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(30)),

                   // child: Image.asset("assets/images/pic_1.png",fit: BoxFit.fill),
                 ),
                 SizedBox(width: 9,),
                 Container(width: 76,height: 134,decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(30)),

                   // child: Image.asset("assets/images/pic_1.png",fit: BoxFit.fill),
                 ),
                 SizedBox(width: 9,),
                 Container(width: 76,height: 134,decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(30)),

                   // child: Image.asset("assets/images/pic_1.png",fit: BoxFit.fill),
                 ),
               ],),
             )
           ],
          ),
        )),
      ),
    );
  }
}
