import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/features/home/presentation/view/screen/favorites_screen.dart';
import 'package:challenges/features/home/presentation/view/screen/home_screen.dart';
import 'package:challenges/features/home/presentation/view/screen/salla_screen.dart';
import 'package:challenges/features/home/presentation/view/screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MainController extends GetxController{

  PersistentTabController persistentTabController =
    PersistentTabController(initialIndex: 0);

  int currentTitleIndex = 0;


  changeTitleIndex(int value){
    currentTitleIndex =value;
    update();
  }

  List<String> appBarTitles=[
    'Home','User','Favorites','Salla'
  ];

  List<Widget> screens = [
    const HomeScreen(),
    const UserScreen(),
    const FavoriteScreen(),
    const SallaScreen(),
  ];

  List<PersistentBottomNavBarItem> bottomNavBarItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      activeColorPrimary: ManagerColors.greenColor,
      inactiveColorPrimary: ManagerColors.bottomNavIconsColor,
      iconSize: 26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      activeColorPrimary: ManagerColors.greenColor,
      inactiveColorPrimary: ManagerColors.bottomNavIconsColor,
      iconSize: 26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.favorite_rounded),
      activeColorPrimary: ManagerColors.greenColor,
      inactiveColorPrimary: ManagerColors.bottomNavIconsColor,
      iconSize: 26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_bag),
      activeColorPrimary: ManagerColors.greenColor,
      inactiveColorPrimary: ManagerColors.bottomNavIconsColor,
      iconSize: 26,

    ),
  ];

}