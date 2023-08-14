import 'package:challenges/config/constants.dart';
import 'package:challenges/core/resources/manager_assets.dart';
import 'package:challenges/core/resources/manager_strings.dart';
import 'package:challenges/features/on_boarding/presentation/view/widget/on_boarding_item.dart';
import 'package:challenges/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {

  late PageController pageController;
  static const firstPage = 0;
  static const lastPage = 2;
  int currentPage = firstPage;

  List<String> titles =[
    ManagerStrings.onBoardingTitle1,
    ManagerStrings.onBoardingTitle2,
    ManagerStrings.onBoardingTitle3,
    ManagerStrings.onBoardingTitle4,
  ];

  List<String> images =[
    ManagerAssets.onBoardingImg1,
    ManagerAssets.onBoardingImg2,
    ManagerAssets.onBoardingImg3,
    ManagerAssets.onBoardingImg4,
  ];

  final List pageViewItems = [
    const OnBoardingItem(
      image: ManagerAssets.onBoardingImg1,
      title: ManagerStrings.onBoardingTitle1,
    ),
    const OnBoardingItem(
      image: ManagerAssets.onBoardingImg2,
      title: ManagerStrings.onBoardingTitle2,
    ),
    const OnBoardingItem(
      image: ManagerAssets.onBoardingImg3,
      title: ManagerStrings.onBoardingTitle3,
    ),
    const OnBoardingItem(
      image: ManagerAssets.onBoardingImg4,
      title: ManagerStrings.onBoardingTitle4,
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  Future<void> previousPage() async{
    if (currentPage > firstPage) {
      animateToPage(index: --currentPage);
      update();
    }
  }

  void nextPage() {
    if (isNotLastedPage()) {
      animateToPage(index: ++currentPage);
      update();
    }else{
      Get.offAllNamed(Routes.welcomeView);
    }
  }


  Future<void> animateToPage({required int index}) {
    return pageController.animateToPage(
      index,
      duration: const Duration(seconds: Constants.onBoardingDurationTime),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  Future<void> setCurrentPage(int index) async {
    currentPage = index;
    update();
  }

  bool isNotLastedPage() {
    return currentPage <= lastPage;
  }

}