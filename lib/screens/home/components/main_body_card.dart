import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainBodyCard extends StatelessWidget {
  final bool? isVideo;
  const MainBodyCard({super.key, this.isVideo = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355.0,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFB8CADE).withOpacity(0.27),
            offset: const Offset(0, 0),
            blurRadius: 40.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTopRowWidget(),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 375.54,
            height: 240.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              image: const DecorationImage(
                image: AssetImage('assets/icons/body_pic.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 10,
          ),
          _buildBottomRowWidgets()
        ],
      ),
    );
  }

  Row _buildTopRowWidget() {
    return Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/icons/profile_cover.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Daniela Fernández Ramos',
              style: TextStyle(
                fontFamily: 'Hybi11 Amigo',
                fontSize: 15.0,
                color: Color(0xFF19295C),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/icons/globe.svg'),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  'Hace 3 días',
                  style: TextStyle(
                    fontFamily: 'Hybi11 Amigo',
                    fontSize: 10.0,
                    color: Color(0xFFBABDC9),
                  ),
                )
              ],
            )
          ],
        ),
        const Spacer(),
        Container(
            width: 25.0,
            height: 25.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFEFF2F7),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF657190).withOpacity(0.16),
                  offset: const Offset(0, 3.0),
                  blurRadius: 30.0,
                ),
              ],
            ),
            child: const Icon(Icons.more_horiz_outlined))
      ],
    );
  }

  Row _buildBottomRowWidgets() {
    return Row(
      children: [
        isVideo == true
            ? Row(
                children: [
                  SvgPicture.asset('assets/icons/plus-square-Filled.svg'),
                  const SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset('assets/icons/minus-square-Regular.svg')
                ],
              )
            : SvgPicture.asset('assets/icons/add_emoji.svg'),
        const SizedBox(
          width: 15,
        ),
        SvgPicture.asset('assets/icons/chat.svg'),
        const SizedBox(
          width: 15,
        ),
        SvgPicture.asset('assets/icons/next.svg'),
        const Spacer(),
        const Text(
          '30 comentarios · 5 compartidos',
          style: TextStyle(
            fontFamily: 'Hybi11 Amigo',
            fontSize: 12.0,
            color: Color(0xFF747EA0),
          ),
        )
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0020500, size.height * 0.9957500);
    path0.quadraticBezierTo(size.width * 0.5011000, size.height * 0.8793000,
        size.width * 0.5057500, size.height * 0.4888500);
    path0.quadraticBezierTo(size.width * 0.4993000, size.height * 0.1079000, 0,
        size.height * 0.0050000);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
