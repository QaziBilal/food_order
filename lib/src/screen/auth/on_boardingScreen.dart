import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/auth/signin.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';
import 'package:food_order_app/src/widgets/onboarding_splash_widgets.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

PageController pageController = PageController();

List images = [
  AppImages.onboarding1,
  AppImages.onboarding2,
  AppImages.onboarding3
];

List heading = [
  "All Your Favourite",
  "Free Delivery Offers",
  "Choose Your Food"
];

List subtitle = [
  "Order from the best local restaurants with easy, on-demand delivery.",
  "Free delivery for new customers via Apple Pay and others payment methods.",
  "Easily find your type of food craving and you’ll get delivery in wide range."
];

int currentPage = 0;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          splashWidgetHeader(sw, sh, context),
          Positioned(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: images.length,
              onPageChanged: onChanged,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImage(
                          image: images[index],
                          width: sw * 0.6,
                          height: sw * 0.6,
                          fit: BoxFit.contain,
                        ),
                        30.height,
                        customText(context, heading[index],
                            size: 28,
                            color: AppColors.black,
                            fontWeight: FontWeight.w700),
                        20.height,
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: customText(context, subtitle[index],
                              size: 18,
                              fontFamily: "sdfh",
                              color: AppColors.lightgrey),
                        )
                      ]),
                );
              },
            ),
          ),
          Positioned(
              left: sw * 0.41,
              top: sh * 0.8,
              child: Row(
                children: List<Widget>.generate(3, (index) {
                  return Center(
                    child: Container(
                      width: 10,
                      height: 5,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: index == currentPage
                              ? AppColors.green
                              : AppColors.lightgrey.withOpacity(0.20),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  );
                }),
              )),
          Positioned(
              left: sw * 0.05,
              top: sh * 0.85,
              child: GetStartedButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              }))
        ],
      ),
    );
  }

  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }
}
