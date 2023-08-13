import 'package:challenges/core/resources/manager_assets.dart';
import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_strings.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:challenges/features/on_boarding/presentation/controller/on_boarding_controller.dart';
import 'package:challenges/features/on_boarding/presentation/view/widget/slider_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingItem extends StatelessWidget {
  final String image;
  final String title;

  const OnBoardingItem({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
        builder:(controller) =>
            Stack(
              children: [
                SizedBox(width: double.infinity,child: Image.asset(image,fit: BoxFit.cover)),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                    Row(
                      children: [
                        controller.currentPage == 0 ?
                          Container():
                          TextButton(
                          onPressed: (){
                            controller.previousPage();
                          },
                          child: Text(
                            ManagerStrings.back,
                            style: getMediumTextStyle(
                                fontSize: 16,
                                color: ManagerColors.greyColor),
                          ),
                        ),
                        const Spacer(),
                          TextButton(
                          onPressed: (){
                            controller.nextPage();
                          },
                          child: Text(
                            ManagerStrings.next,
                            style: getMediumTextStyle(
                                fontSize: 16,
                                color: ManagerColors.greenColor),
                          ),
                        )
                      ],
                    ),
                    Text(
                      title,
                      style: getSemiBoldTextStyle(
                          fontSize: 26,
                          color: ManagerColors.blackColor),
                      textAlign: TextAlign.center,
                    ),
                    controller.currentPage == 0 ?
                    Image.asset(ManagerAssets.bigCart,fit: BoxFit.cover):
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                    Text(
                      ManagerStrings.onBoardingDescription,
                      style: getMediumTextStyle(
                          fontSize: 15,
                          color: ManagerColors.lightGreyColor),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    const SliderIndicator(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.14,),
                  ],
                ),

              ],
            ),
    );
  }
}