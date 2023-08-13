import 'package:challenges/core/resources/manager_strings.dart';
import 'package:challenges/config/dependency_injection.dart';
import 'package:challenges/features/main/presentation/view/main_view.dart';
import 'package:challenges/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:challenges/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashView = '/splash_view';
  static const String onBoardingView = '/on_boarding_view';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
  static const String mainView = '/main_view';
}

class RouteGenerator {

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingView:
        initOnBoardingModule();
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.mainView:
        initMainModule();
        return MaterialPageRoute(builder: (_) => const MainView());
      default:
        return unDefinedRoute();
    }
  }


  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(ManagerStrings.noRoutFound),
        ),
        body: const Center(
          child: Text(ManagerStrings.noRoutFound),
        ),
      ),
    );
  }

}