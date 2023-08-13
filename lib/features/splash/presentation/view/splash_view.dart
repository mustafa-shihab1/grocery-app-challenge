import 'package:challenges/core/resources/manager_assets.dart';
import 'package:challenges/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ManagerColors.greenColor,
      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(ManagerAssets.splash),
        ),
      )

    );
  }
}
