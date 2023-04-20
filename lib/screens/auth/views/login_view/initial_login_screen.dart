import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ping_project/constants/app_colors.dart';
import 'package:ping_project/screens/auth/views/login_view/login%20_screen.dart';
import 'package:ping_project/screens/auth/views/sign_up_view/sign_up_screen.dart';

import '../../../../widgets/common_button.dart';


class InitialLoginScreen extends StatelessWidget {
  const InitialLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        // // statusBarIconBrightness: Brightness.dark,
         systemNavigationBarColor: Colors.white,
        // // systemNavigationBarIconBrightness: Brightness.dark,
      ),


      child: Scaffold(
        body: Stack(
          children: [

            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset("assets/images/background_img.png",fit: BoxFit.cover,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.05),
                  child: SizedBox(
                    height: height * 0.3,
                    child: Image.asset("assets/images/find_friend.png"),),
                ),

                Padding(
                  padding: EdgeInsets.only(top: height * 0.04),
                  child: SizedBox(
                    width: double.infinity,
                    child: SvgPicture.asset("assets/images/ping.svg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Find Friends",
                    style: TextStyle(
                      color: AppColors.kBlackColor,
                      fontSize: 20,
                      fontFamily: "Poppins-SemiBold",
                    ),
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.only(top: 2),
                  child: Text(
                    "Let's find your best friend and \nenjoy your good life from now!",
                    style: TextStyle(
                        color: AppColors.kGreyColor,
                        fontSize: 15,
                        fontFamily: "Poppins-SemiBold",
                        height: 1.5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: SizedBox(
                    height: height * 0.07,
                    width: width * 0.8,
                    child: CommonButton(color: AppColors.kBlueColor, onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      },));
                    },txt: "Log In"),

                  ),
                ),
                SizedBox(
                  height: height*0.021,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      "Do you have an account? ",
                      style: TextStyle(
                        color: AppColors.kGreyColor,
                        fontSize: 15,
                        fontFamily: "Poppins-SemiBold",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const SignUpScreen();
                        },));
                      },
                      child: const Text(
                        "Sign UP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: "Poppins-SemiBold"
                        ),
                      ),
                    ),
                  ],)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
