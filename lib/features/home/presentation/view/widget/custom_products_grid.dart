import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:challenges/features/home/presentation/view/widget/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProductsGrid extends StatelessWidget {
  const CustomProductsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: controller.products.length,
              itemBuilder: (_, index) => CustomProductCard(index: index),
          ),
        );
      }
    );
  }
}