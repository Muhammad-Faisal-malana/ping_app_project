import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ping_project/widgets/common_button.dart';

import '../constants/constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _pinCodeController = TextEditingController();

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
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background_22.png"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 38, right: 38),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 65),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 140,
                      ),
                      Center(
                        child: SvgPicture.asset(
                          'assets/images/otp_image.svg',
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        "48 Seconds",
                        style: TextStyle(
                            color: Constants.kBlueColor,
                            fontSize: 18,
                            fontFamily: "PoppinsBold"),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        "Please enter the OTP sent\non your mobile phone \nnumber",
                        style: TextStyle(
                            color: Constants.kGreyColor,
                            fontSize: 16,
                            fontFamily: "PoppinsLight"),
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      Center(
                        child: PinCodeTextField(
                          textStyle: const TextStyle(
                              fontSize: 37, fontWeight: FontWeight.bold),
                          controller: _pinCodeController,
                          appContext: context,
                          length: 4,
                          animationType: AnimationType.fade,
                          onChanged: (value) {
                            // _pinCodeController.text = value;
                          },
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.circle,
                            borderRadius: BorderRadius.circular(7),
                            fieldHeight: 70,
                            fieldWidth: 70,
                            activeFillColor: Colors.white,
                            inactiveFillColor: Colors.white,
                            selectedFillColor: Colors.white,
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            selectedColor: Colors.white,
                          ),
                          cursorColor: Colors.black,
                          cursorHeight: 30,
                          animationDuration: const Duration(milliseconds: 250),
                          enableActiveFill: true,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Resend",
                            style: TextStyle(
                                color: Constants.kBlackColor,
                                fontSize: 12,
                                fontFamily: "PoppinsBold"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            "assets/icons/resend_icon.svg",
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      CommonButton(
                          txt: "Verify",
                          onPress: () {
                            showDialog(
                              context: context,
                              builder: (_) => getSuccessAlert(context)
                            );
                          },
                          color: Constants.kBlueColor),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Scaffold(
          //   backgroundColor: Colors.transparent,
          //   body: ,
          // ),
        ),
      ),
    );
  }

  getSuccessAlert(BuildContext context){
    /// Alert Dialog for successfully
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(

        children: [
          Container(
            margin: EdgeInsets.only(top: 35),
            height: 271,
            width: 338,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(30)),
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              SizedBox.shrink(),
              SvgPicture.asset(
                'assets/images/verified_alert_image.svg',
                height: 168,
                width: 154,
                //fit: BoxFit.fill,
              ),
              Positioned(
                left:190,
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(height: 25,width: 25,decoration: BoxDecoration(
                      color: Constants.kBlueColor,
                      borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.close,color: Colors.white,),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120,top: 170),
            child: Text(
              "Verified",
              style: TextStyle(
                  color: Constants.kBlueColor,
                  fontSize: 18,
                  fontFamily: "PoppinsBold"),
            ),


          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 200),
            child:  Text(
              "Phone Number Successfully Registered.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Constants.kGreyColor,
                  fontSize: 16,
                  fontFamily: "PoppinsLight"),
            ),


          ),

        ],
      ),
    );
  }

  getFailedAlert(BuildContext context){
    /// Alert Dialog for successfully
    return  /// Alert Dialog for Failed
      AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
        title: Stack(
          children: [
              Positioned(
              left:205,
              child: Container(height: 25,width: 25,decoration: BoxDecoration(
                  color: Constants.kBlueColor,
                  borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.close,color: Colors.white,),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 122,
                  width: 166,
                  child: SvgPicture.asset(
                    'assets/images/failed_dialog_image.svg',
                    height: 168,
                    width: 154,
                    //fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "Failed",
                  style: TextStyle(
                    color: Constants.kBlueColor,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    // fontFamily: "PoppinsBold"
                  ),
                ),
                Center(
                  child: Text(
                    "Failed to registered\n please try again..",
                    style: TextStyle(
                        color: Constants.kGreyColor,
                        fontSize: 16,
                        fontFamily: "PoppinsLight"),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ],
        ),
      );
  }
}
