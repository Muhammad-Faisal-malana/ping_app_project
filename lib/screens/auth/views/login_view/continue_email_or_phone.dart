import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ping_project/screens/auth/views/login_view/login_via_phone_number.dart';
import 'package:ping_project/screens/home/home_screen.dart';
import 'package:ping_project/widgets/common_button.dart';

import '../../../../constants/app_colors.dart';

class ContinueWithEmailOrPhone extends StatelessWidget {
  const ContinueWithEmailOrPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset("assets/images/background_img.png",fit: BoxFit.cover,),
        ),
        Column(children: [
          SizedBox(height: height*0.07,),
          Image.asset("assets/images/find_friend.png"),
          Padding(
            padding:const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: double.infinity,
              child: SvgPicture.asset("assets/images/ping.svg"),
            ),

          ),
          Padding(
            padding:const EdgeInsets.only(top: 2),
            child: Text(
              "By Proceeding you Accept to",
              style: TextStyle(
                  color: AppColors.kGreyColor,
                  fontSize: 15,
                  fontFamily: "Poppins-SemiBold",
                  height: 1.5),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(top: 2),
            child: InkWell(
              onTap: () {

              },
              child: Text(
                "Privacy & Terms & Conditions",
                style: TextStyle(
                    color: AppColors.kBlueColor,
                    fontSize: 15,
                    fontFamily: "Poppins-SemiBold",
                    height: 1.5),
              ),
            ),
          ),
          const SizedBox(height: 10,),

          Padding(
            padding:const EdgeInsets.only(top: 2),
            child: Text(

              "Continue With ?",
              style: TextStyle(

                  color: AppColors.kBlueColor,
                  fontSize: 20,
                  fontFamily: "Poppins-SemiBold",
                  height: 1.5),
            ),
          ),
          const SizedBox(height: 10,),
              SizedBox(
                  height: height*0.07,
                  width: width*0.8,
                  child: CommonButton(txt: "Email", onPress: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen();
                      },
                    ));
                  }, color: AppColors.kBlueColor)),
         const SizedBox(height: 10,),
          SizedBox(
              height: height*0.07,
              width: width*0.8,
              child: CommonButton(txt: "Phone", onPress: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const LoginViaPhoneNumber();
                  },
                ));
              }, color: AppColors.kLightBlueColor)),

        ],),
      ]),
    );
  }
}
