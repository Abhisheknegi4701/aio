
import 'package:flutter/material.dart';

import '../../utill/color_resources.dart';
import '../../utill/dimensions.dart';
import '../../utill/styles.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  final double margin;
  final Color? textColor;
  const CustomButton({super.key, required this.buttonText, required this.onPressed, this.margin = 0, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(margin),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: onPressed == null ? ColorResources.getHintColor(context) : Theme.of(context).primaryColor,
          minimumSize: Size(MediaQuery.of(context).size.width, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(buttonText, style: poppinsMedium.copyWith(
          color: textColor ?? Theme.of(context).cardColor,
          fontSize: Dimensions.fontSizeLarge,
        )),
      ),
    );
  }
}