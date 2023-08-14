import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Gradient? gradientColor;
  final Color? solidColor;
  final String? image;
  final String? text;
  final Color? textColor;
  final bool? hasImage;
  final Function()? onPressed;
  const MainButton({
    this.gradientColor,
    this.solidColor,
    this.image,
    this.text,
    this.textColor,
    this.hasImage,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradientColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: ManagerColors.greyColor.withOpacity(0.2), // Shadow color
            spreadRadius: 3, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 3), // Offset in the vertical direction
          ),
        ],
      ),
      child: MaterialButton(
        color: solidColor,
        elevation: 0,
        height: 60,
        shape:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if(hasImage==true)
            Image.asset(image!),
            Text(
              text!,
              style: getMediumTextStyle(
                  fontSize: 16,
                  color: textColor!
              ),
            ),
          ],
        ),
      ),
    );
  }
}
