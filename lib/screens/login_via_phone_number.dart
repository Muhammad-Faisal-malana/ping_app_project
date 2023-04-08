import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ping_project/screens/login%20_screen.dart';
import '../constants/constants.dart';
import '../widgets/common_button.dart';


class LoginViaPhoneNumber extends StatelessWidget {
  const LoginViaPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
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
                image: AssetImage("assets/images/login_via_phone.png"),
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

                Expanded(
                  child: Container(

                    decoration: BoxDecoration(

                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 5  horizontally
                            5.0, // Move to bottom 5 Vertically
                          ),
                        ),
                      ],
                      color: Constants.kWhiteColor,
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
                                color: Constants.kBlueColor,
                                fontSize: 35,
                                // fontFamily: "PoppinsBold",
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Do you have an account? ",
                                  style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color: Constants.kGreyColor,
                                    fontSize: 12,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return const LoginScreen();
                                        },));
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Constants.kBlackColor,

                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 39,
                            ),
                            Text(
                              "Please enter the mobile \nphone number",
                              style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  color: Constants.kGreyColor,
                                  fontSize: 27,
                                  fontFamily: "PoppinsLight"
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Constants.kBlackColor,
                                fontSize: 16,

                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            /// TextField for Entering phone number
                            TextFormField(

                              cursorHeight: 35,
                              cursorColor: Constants.kBlackColor,
                              style: const TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '+91 ',
                                      style: TextStyle(
                                        fontSize: 36,
                                        color: Colors.black,
                                      fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),
                                hintText: '9812345678',
                                hintStyle:  TextStyle(
                                  fontSize: 36,
                                  color: Colors.grey.shade300,
                                  fontWeight: FontWeight.bold,
                                 //  fontFamily: "PoppinsBold",
                                ),

                                fillColor: Constants.kBlackColor,


                              ),
                            ),


                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: SizedBox(
                                  height: height * 0.07,
                                  width: width * 0.8,
                                  child: CommonButton(color: Constants.kBlueColor,onPress: (){},txt: "Continue"),
                                ),
                              ),
                            ),
                          const  SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return const LoginScreen();
                                        },));
                                  },
                                  child: Text(
                                    "Continue With email instead",
                                    style: TextStyle(
                                        color: Constants.kBlueColor,
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
