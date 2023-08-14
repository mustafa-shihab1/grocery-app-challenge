import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:flutter/material.dart';

class AccountQuestion extends StatelessWidget {
  final String? question;
  final String? action;
  final Function()? onPressed;
  const AccountQuestion({
    required this.question,
    required this.action,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question!,
          style: getLightTextStyle(fontSize: 15, color: ManagerColors.lightGreyColor),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            action!,
            style: getRegularTextStyle(fontSize: 15, color: ManagerColors.blackColor),
          ),
        ),
      ],
    );
  }
}
