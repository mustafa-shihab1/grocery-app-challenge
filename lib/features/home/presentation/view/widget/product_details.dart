import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  final int index;

  const ProductDetails({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) {
          return Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: controller.productColorsList![index],
                  ),
                  Positioned(
                    bottom: -15,
                    child: Image.asset(
                      controller.productIconsList![index],
                      width: 125,
                      height: 90,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                  controller.products[index]['price'],
                  style: getMediumTextStyle(
                      fontSize: 12,
                      color: ManagerColors.greenColor
                  )
              ),
              const SizedBox(height: 3),
              Text(
                  controller.products[index]['name'],
                  style: getMediumTextStyle(
                      fontSize: 16,
                      color: ManagerColors.blackColor)
              ),
              const SizedBox(height: 3),
              Text(
                  controller.products[index]['weight'],
                  style: getMediumTextStyle(
                      fontSize: 12,
                      color: ManagerColors.lightGreyColor
                  )
              ),
            ],
          );
        }
    );
  }
}