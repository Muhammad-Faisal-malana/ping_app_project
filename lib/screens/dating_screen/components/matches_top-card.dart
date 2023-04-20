import 'package:flutter/material.dart';

class MatchesTopCard extends StatelessWidget {
  const MatchesTopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return // Group: Group 1221

      SizedBox(
        width: 100,
        height: 150,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: 92.42,
              height: 150.14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/pic_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
  }
}
