import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/common_app_bar.dart';
import '../home/components/main_body_card.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: CommonAppBar(),
      body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Constants.kPadding, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MainBodyCard(
                    isVideo: true,
                  );
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
    );
  }
}
