import 'package:challenges/features/on_boarding/presentation/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller) =>
              Scaffold(
                body: PageView(
                  controller: controller.pageController,
                  children: [
                    ...controller.pageViewItems,
                  ],
                  onPageChanged: (index) {
                    controller.setCurrentPage(index);
                  },
                ),
              ),
    );
  }
}

