import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ping_project/constants/app_colors.dart';

import 'components/matches_top-card.dart';

class MatchesOne extends StatelessWidget {
  const MatchesOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text("Matches",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: AppColors.kBlackColor)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Image.asset("assets/images/person_avatar.png"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const MatchesTopCard();
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
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                elevation: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      "keep looking\nThere is someone\nfor everyone",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      "assets/icons/search_big.png",
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}