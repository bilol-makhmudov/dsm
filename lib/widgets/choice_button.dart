import 'package:dsm/config/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final bool withGradient;
  final IconData iconData;

  const ChoiceButton(
      {super.key,
      required this.width,
      required this.height,
      required this.size,
      required this.color,
      required this.iconData,
      required this.withGradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          gradient: withGradient
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.red, theme().colorScheme.primary])
              : null,
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withAlpha(50),
                spreadRadius: 4,
                blurRadius: 4,
                offset: Offset(3, 3)),
          ]),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: color,
            size: size,
          )),
    );
  }
}
