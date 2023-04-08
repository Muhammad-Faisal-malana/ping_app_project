// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/grid_items_model.dart';

class GridItemCard extends StatelessWidget {
  final String? image;
  final String ?title;
  const GridItemCard({
    Key? key, this.image, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          SvgPicture.asset(image ?? ''),
          const SizedBox(
            width: 20,
          ),
          Text(title ?? ''),
        ],
      ),
    );
  }
}
