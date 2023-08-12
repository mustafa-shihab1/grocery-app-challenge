import 'package:challenges/core/resources/manager_fonts.dart';
import 'package:flutter/material.dart';

TextStyle _textStyle({
  required double fontSize,
  required String fontFamily,
  required FontWeight fontWeight,
  required Color color,
  required TextDecoration decoration,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
    decoration: decoration,
  );
}

TextStyle getRegularTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.regular,
    color: color,
    decoration: decoration,
  );
}

TextStyle getBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.bold,
    color: color,
    decoration: decoration,
  );
}

TextStyle getMediumTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.medium,
    color: color,
    decoration: decoration,
  );
}

TextStyle getLightTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.light,
    color: color,
    decoration: decoration,
  );
}

TextStyle getSemiBoldTextStyle({
  required double fontSize,
  required Color color,
  TextDecoration decoration = TextDecoration.none,
}) {
  return _textStyle(
    fontSize: fontSize,
    fontFamily: ManagerFontFamily.fontFamily,
    fontWeight: ManagerFontWeight.semiBold,
    color: color,
    decoration: decoration,
  );
}

