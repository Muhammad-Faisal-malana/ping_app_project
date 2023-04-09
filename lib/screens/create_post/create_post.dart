import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/app_colors.dart';
class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFC),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return OtpScreen();
              // },));
            },
            icon: SvgPicture.asset("assets/images/back_button_icon.svg"),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 90,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            "Create Post",
            style: TextStyle(
              color: AppColors.kBlueColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              // fontFamily: "PoppinsBold"
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "The Audit",
                style: TextStyle(
                  color: AppColors.kBlueColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // fontFamily: "PoppinsBold"
                ),
              ),
              leading: CircleAvatar(
                radius: 30,
                child: Image.asset(
                  "assets/images/person_avatar.png",
                  height: 60,
                  width: 60,
                ),
              ),
              subtitle: const SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "What's On Your Mind? @Mention#Hashtags",
                style: TextStyle(color: AppColors.kGreyColor),
              ),
            ),
            Expanded(child: Container(),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                const SizedBox(width: 10,),
                InkWell(
                    onTap: () {
                    },
                    child: SvgPicture.asset("assets/icons/happy-face.svg")),
               const SizedBox(width: 10,),
                InkWell(
                    onTap: () {
                    },
                    child: SvgPicture.asset("assets/icons/location.svg")),
                const SizedBox(width: 10,),
                InkWell(
                    onTap: () {

                    },
                    child: SvgPicture.asset("assets/icons/lock.svg")),
                Expanded(child: Container()),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      backgroundColor: AppColors.kBlueColor,
                    ),
                    onPressed: () {


                        showDialog(
                            context: context,
                            builder: (_) => RadioDialog(),
                        );


                }, child: const Text("Post"))
              ],),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        child: Container(
          height: 50,
          decoration: const BoxDecoration(
             color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 3.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 5  horizontally
                  5.0, // Move to bottom 5 Vertically
                ),
              )
            ],
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               const Text("Add To Your Post"),
              const SizedBox(),
              InkWell(

                  child: SvgPicture.asset("assets/icons/plus-square.svg")),
            ],),
        ),
      ),
    );
  }

}


class RadioDialog extends StatefulWidget {
  @override
  _RadioDialogState createState() => _RadioDialogState();
}

class _RadioDialogState extends State<RadioDialog> {
  late String _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = 'Option 1';
  }

  void _handleRadioValueChange(String value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title:  Text('Select Your Privacy',style: TextStyle(color: AppColors.kBlueColor,fontSize: 20),),
      contentPadding:const EdgeInsets.symmetric(vertical: 2.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioListTile(
            title:  Text('Everyone',style: TextStyle(color: AppColors.kBlueColor,fontSize: 20),),
            value: 'Option 1',
            groupValue: _selectedOption,
            onChanged: (value) {

            },
          ),
          RadioListTile(
            title:  Text('Followers',style: TextStyle(color: AppColors.kBlueColor,fontSize: 20),),
            value: 'Option 2',
            groupValue: _selectedOption,
            onChanged: (value) {

            },
          ),
          RadioListTile(
            title:  Text('No One',style: TextStyle(color: AppColors.kBlueColor,fontSize: 20),),
            value: 'Option 3',
            groupValue: _selectedOption,
            onChanged: (value) {

            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel',style: TextStyle(

            color: AppColors.kBlueColor,

          fontSize: 15,fontWeight: FontWeight.bold),),
        ),
        TextButton(
          onPressed: () {

            Navigator.pop(context);
          },
          child: Text('OK',style: TextStyle(

    color: AppColors.kBlueColor,

    fontSize: 15,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}
