import 'package:challenges/config/constants.dart';
import 'package:challenges/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
        const Duration(
          seconds: Constants.splashDuration,
        ), () {
          Get.offAllNamed(Routes.onBoardingView);
    });
  }

}