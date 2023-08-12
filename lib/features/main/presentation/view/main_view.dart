import 'package:challenges/features/main/presentation/controller/main_controller.dart';
import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: ManagerColors.whiteColor,
            title: Text(
              controller.appBarTitles[controller.currentTitleIndex],
              style: getRegularTextStyle(
                  fontSize: 18,
                  color: ManagerColors.lightGreyColor
              ),
            ),
            centerTitle: true,
            actions: [
              controller.currentTitleIndex == 0 ?
              IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.search_outlined,
                    color: ManagerColors.lightGreyColor,
                  )
              ) :Container()
            ],
          ),
          backgroundColor: ManagerColors.transparent,
          body: PersistentTabView(
            context,
            controller: controller.persistentTabController,
            backgroundColor: ManagerColors.whiteColor,
            navBarStyle: NavBarStyle.style6,
            confineInSafeArea: true,
            navBarHeight: 60,
            decoration: const NavBarDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            screens: controller.screens,
            items: controller.bottomNavBarItems,
            onItemSelected: (value) {
              controller.changeTitleIndex(value);
            },

          ),

        );
      }
    );
  }
}
