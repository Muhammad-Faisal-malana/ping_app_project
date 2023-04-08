import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget{
  final Widget? leadingIcon;
  final String? titleText;
  final double? height;
  final Color? color;
  final TextStyle? style;
  final Widget? widget;
  CommonAppBar(
      {super.key,
        this.leadingIcon,
        this.titleText,
        this.height,
        this.color,
        this.style,
        this.widget});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor: color,
      leading: leadingIcon,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      title: Text(
        titleText??"",
        style: style),
      );
  }

  @override
  @override
  Size get preferredSize => Size.fromHeight(height!);
}
