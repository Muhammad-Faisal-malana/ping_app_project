import 'package:flutter/material.dart';

class TopHeaderCard extends StatelessWidget {
  const TopHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return // Group: Group 1221

        SizedBox(
      width: 80,
      height: 140,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            width: 76.42,
            height: 124.14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/pic_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              width: 24.08,
              height: 24.08,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.all(Radius.elliptical(12.04, 12.04)),
                border: Border.all(
                  width: 1.0,
                  color: const Color(0xFF1977F3),
                ),
              ),
              child: Container(
                width: 17.31,
                height: 17.31,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/pic_1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
