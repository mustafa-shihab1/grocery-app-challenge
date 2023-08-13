import 'package:challenges/features/home/presentation/controller/home_controller.dart';
import 'package:challenges/features/main/presentation/controller/main_controller.dart';
import 'package:challenges/features/on_boarding/presentation/controller/on_boarding_controller.dart';
import 'package:challenges/features/splash/presentation/controller/splash_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

initMainModule() {
  Get.put<MainController>(MainController());
  initHomeModule();
}

initHomeModule() {
  disposeOnBoardingModule();
  Get.put<HomeController>(HomeController());
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}

initOnBoardingModule() {
  disposeSplash();
  Get.put<OnBoardingController>(OnBoardingController());
}

disposeOnBoardingModule() {
  Get.delete<OnBoardingController>();
}