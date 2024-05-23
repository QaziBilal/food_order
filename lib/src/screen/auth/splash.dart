import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/auth/on_boardingScreen.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';
import 'package:food_order_app/src/widgets/onboarding_splash_widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: -50,
              left: -130,
              child: CircleAvatar(
                radius: 250,
                backgroundColor: AppColors.activeColor.withOpacity(0.1),
              )),
          splashWidgetHeader(sw, sh, context),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                30.height,
                CustomImage(
                  image: AppImages.splash,
                  width: sh * 0.3,
                  height: sh * 0.3,
                  fit: BoxFit.contain,
                ),
                20.height,
                customText(context, "Welcome",
                    size: 28,
                    color: AppColors.black,
                    fontWeight: FontWeight.w700),
                20.height,
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: customText(context,
                      "It’s a pleasure to meet you. We are excited that you’re here so let’s get started!",
                      size: 18, color: AppColors.black, fontFamily: "Yu"),
                ),
              ],
            ),
          ),
          Positioned(
              left: sw * 0.05,
              top: sh * 0.85,
              child: GetStartedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => OnBoardingScreen())));
                },
              ))
        ],
      ),
    );
  }
}
