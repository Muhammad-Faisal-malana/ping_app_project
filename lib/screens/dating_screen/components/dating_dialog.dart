import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/common_button.dart';

class DatingDialog extends StatefulWidget {
  const DatingDialog({Key? key}) : super(key: key);

  @override
  State<DatingDialog> createState() => _DatingDialogState();
}

class _DatingDialogState extends State<DatingDialog> {
  @override
  Widget build(BuildContext context) {
    RangeValues _currentRangeValues = const RangeValues(20, 60);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // // mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage(
                      'assets/images/pic_1.png'),
                ),
                Text(
                  'Show Me',
                  style: TextStyle(
                    color: AppColors.kBlueColor,
                    fontSize: 23.0,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color:
                        AppColors.kBlueColor,
                        borderRadius:
                        BorderRadius.circular(
                            20)),
                    child:const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/images/show_me.svg',
              height: 100.0,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30, vertical: 20),
              child: CommonButton(
                  height: 30,
                  txt: 'Age',
                  onPress: () {},
                  color: AppColors.kBlueColor)),

          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 100,
            // divisions: 5,
            activeColor: AppColors.kBlueColor, // set the active color here
            inactiveColor: AppColors.kLightBlueColor,
            labels: RangeLabels(
              _currentRangeValues.start
                  .round()
                  .toString(),
              _currentRangeValues.end
                  .round()
                  .toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("18-30",),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30, vertical: 20),
              child: CommonButton(
                  height: 30,
                  txt: 'Gender',
                  onPress: () {},
                  color: AppColors.kBlueColor)),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Radio(
                    activeColor: AppColors.kBlueColor,

                    value: 1,
                    groupValue: 1,
                    onChanged: (int? value) {},
                  ),
                  Text('Male'),
                  Radio(
                    activeColor: AppColors.kBlueColor,
                    value: 2,
                    groupValue: 1,
                    onChanged: (int? value) {},
                  ),
                  Text("Female"),
                  Radio(
                    activeColor: AppColors.kBlueColor,
                    value: 2,
                    groupValue: 1,
                    onChanged: (int? value) {},
                  ),
                  Text("Both")
                ],
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30, vertical: 20),
              child: CommonButton(
                  height: 50,
                  txt: 'Show Me',
                  onPress: () {},
                  color: AppColors.kBlueColor)),
        ],
      ),
    );
  }
}
