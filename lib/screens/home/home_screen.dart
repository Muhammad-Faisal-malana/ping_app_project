import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ping_project/screens/home/components/main_body_card.dart';

import '../../constants/constants.dart';
import '../../widgets/common_app_bar.dart';
import 'components/top_header_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        // // statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        // // systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: CommonAppBar(
          showIcons: true,
        ),
        body: Padding(
         padding:  EdgeInsets.symmetric(horizontal: Constants.kPadding, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const TopHeaderCard();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const MainBodyCard();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
