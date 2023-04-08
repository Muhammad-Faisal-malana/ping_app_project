import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ping_project/constants/constants.dart';
import 'package:ping_project/screens/sign_up_screen.dart';

import '../widgets/common_button.dart';


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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background_11.png"),
            ),
          ),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.032),
                child: SizedBox(
                    height: height * 0.3,
                    child: Image.asset("assets/images/find_friend.png")),
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
                    color: Constants.kBlackColor,
                    fontSize: 20,
                    fontFamily: "Poppins-SemiBold",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: SizedBox(
                  width: 220,
                  child: Text(
                    "Let's find your best friend and enjoy your good life from now!",
                    style: TextStyle(
                        color: Constants.kGreyColor,
                        fontSize: 15,
                        fontFamily: "Poppins-SemiBold",
                        height: 1.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: SizedBox(
                  height: height * 0.07,
                  width: width * 0.8,
                  child: CommonButton(color: Constants.kBlueColor,onPress: (){},txt: "Log In"),

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
                      color: Constants.kGreyColor,
                      fontSize: 15,
                      fontFamily: "Poppins-SemiBold",
                      ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    },));
                  },
                  child: Text(
                    "Sign UP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Constants.kBlackColor,
                      fontSize: 15,
                      fontFamily: "Poppins-SemiBold"
                    ),
                  ),
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
