import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_strings.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerContent extends StatelessWidget {
  const BannerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 20),
                  Text(ManagerStrings.bannerText,
                      style: getSemiBoldTextStyle(fontSize: 16, color: ManagerColors.blackColor)),
                ],
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomLeft,
                child: AnimatedSmoothIndicator(
                  effect:const ExpandingDotsEffect(
                    dotWidth: 8,
                    dotHeight: 8,
                    activeDotColor: ManagerColors.greenColor,
                    dotColor: ManagerColors.whiteColor,
                  ),
                  activeIndex: controller.currentSliderIndex,
                  count: controller.banners!.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
