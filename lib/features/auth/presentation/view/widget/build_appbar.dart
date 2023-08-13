import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    backgroundColor: ManagerColors.transparent,
    leading: IconButton(
      onPressed: (){
        Get.back();
        },
      icon: const Icon(
        Icons.arrow_back,
        color: ManagerColors.whiteColor,
      ),
    ),
    title: Text(
      title,
      style: getMediumTextStyle(fontSize: 20, color: ManagerColors.whiteColor),),
    centerTitle: true,
  );
}
