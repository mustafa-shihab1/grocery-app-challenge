import 'package:flutter/material.dart';

class ManagerColors{
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color backgroundColor = Color(0xFFF4F5F9);
  static const Color blackColor = Color(0xFF000000);
  static const Color transparent = Colors.transparent;
  static const Color greyColor = Colors.grey;
  static const Color greenColor = Color(0xFF6CC51D);
  static const Color lightGreenColor = Color(0xFFAEDC81);
  static const Color lightGreyColor = Color(0xFF868889);
  static const Color bottomNavIconsColor = Color(0xFFBDBDBD);
  static const Color lineColor = Color(0xFFEBEBEB);
  static const Color redColor = Color(0xFFFE585A);
  static const Color newBoxColor = Color(0xFFFDEFD5);
  static const Color newWordColor = Color(0xFFE8AD41);
  static const Color discountColor = Color(0xFFF56262);
  static const Color discountBoxColor = Color(0xFFFEE4E4);
  static const Color cBeveragesColor = Color(0xFFFFF6E3);
  static const Color cEdibleOilColor = Color(0xFFDCF4F5);
  static const Color cFruitsColor = Color(0xFFFFE9E5);
  static const Color cGroceryColor = Color(0xFFF3EFFA);
  static const Color cHouseholdColor = Color(0xFFFFE8F2);
  static const Color cVegetablesColor = Color(0xFFE6F2EA);
  static const Color pAvocadoColor = Color(0xFFFCFFD9);
  static const Color pBroccoliColor = Color(0xFFD2FFD0);
  static const Color pGrapesColor = Color(0xFFFEE1ED);
  static const Color pPeachColor = Color(0xFFFFCEC1);
  static const Color pPineappleColor = Color(0xFFFFE6C2);
  static const Color pPomegranateColor = Color(0xFFFFE3E2);

  static const Gradient primaryGradient = LinearGradient(
    colors: [whiteColor, backgroundColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient splashGradient = LinearGradient(
    colors: [greenColor, whiteColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Gradient buttonGradient = LinearGradient(
    colors: [greenColor, lightGreenColor],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );
}