import 'package:carousel_slider/carousel_slider.dart';
import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:challenges/features/home/presentation/view/widget/bunner_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return CarouselSlider.builder(
          itemCount: controller.banners!.length,
          itemBuilder: (context, index, realIndex) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                      image: AssetImage(controller.banners![index].toString()),
                      fit: BoxFit.cover),
                ),
                width: double.infinity,
                child: const BannerContent(),
              ),
            );
          },
          options: CarouselOptions(
            enlargeCenterPage: true,
            scrollPhysics: const BouncingScrollPhysics(),
            viewportFraction: 0.85,
            autoPlay: true,
            height: 200,
            onPageChanged: (index, reason) {
              controller.changeSliderIndex(index);
            },
          ),
        );
      },
    );
  }
}
