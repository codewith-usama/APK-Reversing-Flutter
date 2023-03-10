import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {

  const BottomButton({super.key, required this.onTap, required this.text});

  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: kBottomContainerColor,
        ),
        width: screenWidth / 1.4,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 30.0),
        child: Center(
          child: Text(
            text,
            style: kBottomTextStyle,
          ),
        ),
      ),
    );
  }
}