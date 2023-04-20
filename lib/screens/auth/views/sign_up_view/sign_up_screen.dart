import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ping_project/screens/auth/views/login_view/continue_email_or_phone.dart';
import 'package:ping_project/screens/auth/views/login_view/login%20_screen.dart';
import 'package:ping_project/screens/auth/views/login_view/login_via_phone_number.dart';
import 'package:ping_project/widgets/common_textField.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/common_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                image: AssetImage("assets/images/background_img.png"),
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
                  height: 50,
                ),

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
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.kBlueColor,
                                fontSize: 35,

                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Sign up to continue",
                              style: TextStyle(
                                height: 1.5,

                                color: AppColors.kGreyColor,
                                fontSize: 12,
                                fontFamily: "Poppins-SemiBold",
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CommonTextField(
                              fillColor: const Color(0xffF5F8FA),
                              hint: "Email",

                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 17, horizontal: 13),
                                    child: SvgPicture.asset(
                                      "assets/icons/user.svg",
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            CommonTextField(

                              fillColor: const Color(0xffF5F8FA),
                              hint: "Password",

                              suffix: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 17, horizontal: 13),
                                  child: SvgPicture.asset(
                                    "assets/icons/eye.svg",
                                    fit: BoxFit.fill,
                                  )),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 17, horizontal: 13),
                                    child: SvgPicture.asset(
                                      "assets/icons/locked.svg",
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            CommonTextField(
                              fillColor: const Color(0xffF5F8FA),
                              hint: "Name",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 17, horizontal: 13),
                                    child: const SizedBox()),
                              ),
                            ),
                            CommonTextField(
                              fillColor: const Color(0xffF5F8FA),
                              hint: "Username",

                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 17, horizontal: 13),
                                    child: const SizedBox()),
                              ),
                            ),
                            CommonTextField(
                              //controller: uNameController,
                              // label: "email",
                              fillColor: const Color(0xffF5F8FA),
                              hint: "Referral Code (Optional)",

                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 17, horizontal: 13),
                                    child: const SizedBox()),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (bool? value) {},
                                ),
                                Text(
                                  "I Accept ",
                                  style: TextStyle(
                                    color: AppColors.kBlackColor,
                                    fontSize: 12,
                                    fontFamily: "Poppins-SemiBold",
                                  ),
                                ),
                                Text(
                                  "to privacy & Terms & Conditions",
                                  style: TextStyle(
                                      color: AppColors.kBlueColor,
                                      fontSize: 12,
                                      fontFamily: "Poppins-SemiBold"),
                                ),
                              ],
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: SizedBox(
                                  height: height * 0.07,
                                  width: width * 0.8,
                                  child: CommonButton(
                                      txt: "Sign up",
                                      onPress: () {

                                        Navigator.push(context, MaterialPageRoute(
                                          builder: (context) {
                                            return const ContinueWithEmailOrPhone();
                                          },
                                        ));
                                      },
                                      color: AppColors.kBlueColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return const LoginViaPhoneNumber();
                                    },));
                                  },
                                  child: Text(
                                    "Already have an account ?",
                                    style: TextStyle(
                                      color: AppColors.kBlueColor,
                                      fontSize: 12,
                                      fontFamily: "Poppins-SemiBold",
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      )),
                                  child: Text(
                                    "Login",
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
