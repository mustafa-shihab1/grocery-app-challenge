import 'package:challenges/core/resources/manager_assets.dart';
import 'package:challenges/core/resources/manager_colors.dart';
import 'package:challenges/core/resources/manager_strings.dart';
import 'package:challenges/core/resources/manager_styles.dart';
import 'package:challenges/features/auth/presentation/view/widget/auth_question.dart';
import 'package:challenges/features/auth/presentation/view/widget/build_appbar.dart';
import 'package:challenges/features/auth/presentation/view/widget/main_button.dart';
import 'package:challenges/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(ManagerStrings.welcome),
      body: Stack(
        children: [
          Image.asset(ManagerAssets.welcomeImg),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.38,
                decoration: const BoxDecoration(
                  color: ManagerColors.backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ManagerStrings.welcome,
                        style: getMediumTextStyle(fontSize: 26, color: ManagerColors.blackColor),
                      ),
                      Text(
                        ManagerStrings.onBoardingDescription,
                        style: getMediumTextStyle(
                            fontSize: 15,
                            color: ManagerColors.lightGreyColor),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height*0.025,),
                      const MainButton(
                        hasImage: true,
                        image: ManagerAssets.google,
                        solidColor: ManagerColors.whiteColor,
                        textColor: ManagerColors.blackColor,
                        text: ManagerStrings.continueWithGoogle,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                      MainButton(
                        hasImage: true,
                        image: ManagerAssets.user,
                        gradientColor: ManagerColors.buttonGradient,
                        text: ManagerStrings.createAccount,
                        textColor: ManagerColors.whiteColor,
                        onPressed: (){
                          Get.toNamed(Routes.signupView);
                        },
                      ),
                      AccountQuestion(
                        question: ManagerStrings.alreadyHaveAccount,
                        action: ManagerStrings.login,
                        onPressed: () => Get.toNamed(Routes.loginView),
                      )
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
