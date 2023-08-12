import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
              itemBuilder: (context, index) => Row(
                children: [
                  const SizedBox(width: 20,),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: controller.categoryColorsList![index],
                        child: SvgPicture.asset(
                          controller.categoryIconsList![index],
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Flexible(
                        child: Text(
                            controller.categoryNameList![index],
                            style: getRegularTextStyle(
                                fontSize: 10,
                                color: ManagerColors.lightGreyColor,
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              itemCount: controller.categoryIconsList!.length,
          ),
        );
      },
    );
  }
}
