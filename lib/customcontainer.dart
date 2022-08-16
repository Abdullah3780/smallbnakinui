import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Color customColor;

  Widget customWidget;

  CustomContainer(
      {Key? key, required this.customColor, required this.customWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), bottomLeft: Radius.circular(45))),
      child: customWidget,
    );
  }
}
