import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIsFavorite extends StatelessWidget {
  const CustomIsFavorite({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) {
          return SizedBox(
            child: controller.products[index]['isFavorite'] == true ?
            const Icon(
              Icons.favorite,
              color: ManagerColors.redColor,
            ) :
            const Icon(
              Icons.favorite_border_outlined,
              color: ManagerColors.greyColor,
            ),
          );
        }
    );
  }
}