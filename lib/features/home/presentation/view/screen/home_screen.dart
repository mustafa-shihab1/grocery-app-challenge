import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_strings.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:challenges/features/home/presentation/view/widget/custom_banner.dart';
import 'package:challenges/features/home/presentation/view/widget/custom_category_list.dart';
import 'package:challenges/features/home/presentation/view/widget/custom_products_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: ManagerColors.primaryGradient,
      ),
      child: Scaffold(
        backgroundColor: ManagerColors.transparent,
        body:SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const CustomBanner(),
              const SizedBox(height: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ManagerStrings.categories,
                      style: getSemiBoldTextStyle(
                          fontSize: 18,
                          color: ManagerColors.blackColor
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const CustomCategoryList(),
              const SizedBox(height: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ManagerStrings.featuredProducts,
                      style: getSemiBoldTextStyle(
                          fontSize: 18,
                          color: ManagerColors.blackColor
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const CustomProductsGrid(),
              const SizedBox(height: 40,),
            ],
          ),
        )
      ),
    );
  }
}
