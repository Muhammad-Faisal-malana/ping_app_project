import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ping_project/screens/auth/views/sign_up_view/sign_up_screen.dart';
import 'package:ping_project/widgets/common_textField.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/common_button.dart';
import '../forgot_password/forgot_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/login_background.png"),
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 66, left: 38),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 190,
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: height * 0.06),
                //   child: SvgPicture.asset("assets/images/loin_background.svg"),
                // ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          //  color: Colors.black.withOpacity(0.5),
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 5  horizontally
                              5.0, // Move to bottom 5 Vertically
                            ),
                        ),
                      ],
                      color: AppColors.kWhiteColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Let's Login.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.kBlueColor,
                                fontSize: 35,
                                fontFamily: "Poppins-SemiBold",
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Do you have an account? Login",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: AppColors.kGreyColor,
                                fontSize: 12,
                                fontFamily: "Poppins-SemiBold",
                              ),
                            ),
                            const SizedBox(
                              height: 39,
                            ),
                            CommonTextField(
                              //controller: uNameController,
                              // label: "email",
                              fillColor: const Color(0xffF5F8FA),
                              hint: "moguzbulbul@gmail.com",

                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 13),
                                    child: SvgPicture.asset("assets/icons/user.svg",fit: BoxFit.fill,)),
                              ),
                            ),
                            CommonTextField(
                              //controller: uNameController,
                              // label: "email",
                              fillColor: const Color(0xffF5F8FA),
                              hint: "Password",
                              // suffix: SvgPicture.asset("assets/icons/eye.svg"),
                              suffix:  Container(
                                padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 13),
                                  child: SvgPicture.asset("assets/icons/eye.svg",fit: BoxFit.fill,)),
                              // Icon(
                              //   Icons.remove_red_eye_outlined,
                              //   color: Constants.kBlueColor,
                              // ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 13),
                                    child: SvgPicture.asset("assets/icons/locked.svg",fit: BoxFit.fill,)),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 47),
                                child: SizedBox(
                                  height: height * 0.07,
                                  width: width * 0.8,
                                  child: CommonButton(color: AppColors.kBlueColor,onPress: (){},txt: "Log In"),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return const ForgotPasswordScreen();
                                    },));
                                  },
                                  child: Text(
                                    "ForgotPassword.   ",
                                    style: TextStyle(
                                      color: AppColors.kGreyColor,
                                      fontSize: 12,
                                      fontFamily: "Poppins-SemiBold",
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder:(context) {
                                      return  const SignUpScreen();
                                    },));
                                  },
                                  child: Text(
                                    "Create new account",
                                    style: TextStyle(
                                        color: AppColors.kBlueColor,
                                        fontSize: 12,
                                        fontFamily: "Poppins-SemiBold"),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
