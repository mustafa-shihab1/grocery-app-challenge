import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_strings.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:challenges/features/home/presentation/view/widget/custom_is_favorite.dart';
import 'package:challenges/features/home/presentation/view/widget/discount_or_new_box.dart';
import 'package:challenges/features/home/presentation/view/widget/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProductCard extends StatelessWidget {
  final int index;
  const CustomProductCard({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: ManagerColors.whiteColor
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DiscountOrNewBox(index: index),
                    CustomIsFavorite(index: index),
                  ],
                ),
                ProductDetails(index: index),
                const SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  color: ManagerColors.lineColor,
                  height: 1.5,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag_outlined,color: ManagerColors.greenColor.withOpacity(0.6),),
                    const SizedBox(width: 5),
                    Text(ManagerStrings.addToCart,
                      style: getRegularTextStyle(
                          fontSize: 12,
                          color: ManagerColors.blackColor
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5)
              ],
            ),
          );
        }
    );
  }
}
