import 'package:challenges/core/resources/manager_assets.dart';
import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  int currentSliderIndex = 0;

  changeSliderIndex(int value){
    currentSliderIndex =value;
    update();
  }

  List<String>? banners = [
    ManagerAssets.banners,
    ManagerAssets.banners,
    ManagerAssets.banners,
    ManagerAssets.banners,
  ];

  List<String>? categoryIconsList = [
    ManagerAssets.vegetables,
    ManagerAssets.fruits,
    ManagerAssets.beverages,
    ManagerAssets.grocery,
    ManagerAssets.edibleOil,
    ManagerAssets.household,
  ];

  List<Color>? categoryColorsList = [
    ManagerColors.cVegetablesColor,
    ManagerColors.cFruitsColor,
    ManagerColors.cBeveragesColor,
    ManagerColors.cGroceryColor,
    ManagerColors.cEdibleOilColor,
    ManagerColors.cHouseholdColor,
  ];
  List<String>? categoryNameList = [
    ManagerStrings.vegetables,
    ManagerStrings.fruits,
    ManagerStrings.beverages,
    ManagerStrings.grocery,
    ManagerStrings.edibleOil,
    ManagerStrings.household,
  ];

  List<Color>? productColorsList = [
    ManagerColors.pPeachColor,
    ManagerColors.pAvocadoColor,
    ManagerColors.pPineappleColor,
    ManagerColors.pGrapesColor,
    ManagerColors.pPomegranateColor,
    ManagerColors.pBroccoliColor,
  ];
  List<String>? productIconsList = [
    ManagerAssets.peach,
    ManagerAssets.avocado,
    ManagerAssets.pineapple,
    ManagerAssets.grapes,
    ManagerAssets.pomegranate,
    ManagerAssets.broccoli,
  ];

  List<Map<String,dynamic>> products =
  [
    {
      "price":"\$8.00",
      "name":ManagerStrings.peach,
      "weight":"dozen",
      "isFavorite":false,
      "isNew":false,
      "discount":"0",
    },
    {
      "price":"\$7.00",
      "name":ManagerStrings.avocado,
      "weight":"2.0 lbs",
      "isFavorite":false,
      "isNew":true,
      "discount":"0",
    },
    {
      "price":"\$9.90",
      "name":ManagerStrings.pineapple,
      "weight":"1.50 lbs",
      "isFavorite":true,
      "isNew":false,
      "discount":"0",
    },
    {
      "price":"\$7.05",
      "name":ManagerStrings.grapes,
      "weight":"5.0 lbs",
      "isFavorite":false,
      "isNew":false,
      "discount":"-16%",
    },
    {
      "price":"\$2.09",
      "name":ManagerStrings.pomegranate,
      "weight":"1.50 lbs",
      "isFavorite":false,
      "isNew":true,
      "discount":"0",
    },
    {
      "price":"\$3.00",
      "name":ManagerStrings.broccoli,
      "weight":"1 kg",
      "isFavorite":true,
      "isNew":false,
      "discount":"0",
    },
  ];




}