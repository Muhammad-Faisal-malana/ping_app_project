import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ping_project/widgets/common_textField.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/common_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
                image: AssetImage("assets/images/background_22.png"),
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
                            const SizedBox(height: 10,),
                            Text(
                              "Forgot Password",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.kBlueColor,
                                fontSize: 35,
                                fontFamily: "Poppins-SemiBold",
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "To reset your password enter the registered email.\nA link will be send o this email to reset your password",
                              style: TextStyle(
                                height: 1.5,
                                //fontWeight: FontWeight.bold,
                                color: AppColors.kGreyColor,
                                fontSize: 12,
                                fontFamily: "Poppins-SemiBold",
                              ),
                            ),
                            const SizedBox(
                              height: 76,
                            ),
                            CommonTextField(
                              //controller: uNameController,
                              // label: "email",
                              fillColor: const Color(0xffF5F8FA),
                              hint: "Email",

                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 13),
                                    child: SvgPicture.asset("assets/icons/user.svg",fit: BoxFit.fill,)),
                              ),
                            ),

                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 51),
                                child: SizedBox(
                                  height: height * 0.07,
                                  width: width * 0.8,
                                  child: CommonButton(color: AppColors.kBlueColor,onPress: (){},txt: "Send Link"),
                                ),
                              ),
                            ),
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
