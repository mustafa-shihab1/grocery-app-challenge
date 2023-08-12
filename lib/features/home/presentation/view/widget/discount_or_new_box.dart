import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscountOrNewBox extends StatelessWidget {
  const DiscountOrNewBox({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) {
          return SizedBox(
            child: controller.products[index]['discount'] != "0"?
            Container(
                height: 20,
                width: 50,
                color: ManagerColors.discountBoxColor,
                child: Center(
                  child: Text(
                    controller.products[index]['discount'],
                    style: getRegularTextStyle(
                        fontSize: 12,
                        color: ManagerColors.redColor
                    ),
                  ),
                )
            ):(
                controller.products[index]['isNew'] == true?
                Container(
                    height: 20,
                    width: 50,
                    color: ManagerColors.newBoxColor,
                    child: Center(
                      child: Text(
                        'New',
                        style: getRegularTextStyle(
                            fontSize: 12,
                            color: ManagerColors.newWordColor
                        ),
                      ),
                    )
                ):Container()),
          );
        }
    );
  }
}
