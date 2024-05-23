import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/auth/forgotScreen/forgot_password.dart';
import 'package:food_order_app/src/screen/auth/forgotScreen/reset_password.dart';
import 'package:food_order_app/src/screen/auth/signup_scree.dart';
import 'package:food_order_app/src/screen/home/home.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/custom_textfield.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../widgets/custom_image.dart';
import '../../widgets/socialMediaButton.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(sw, 40), child: CustomAppbar(name: "Sign in")),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.height,
              customText(context, "Welcome to Tamang Food Services",
                  size: 30,
                  color: AppColors.black,
                  fontFamily: "ksdhaf",
                  textAlign: TextAlign.left),
              15.height,
              customText(context,
                  "Enter your Phone number or Email address for sign in. Enjoy your food :)",
                  size: 16,
                  color: AppColors.lightgrey,
                  fontFamily: "ksdhaf",
                  textAlign: TextAlign.left),
              20.height,
              Align(
                alignment: Alignment.centerLeft,
                child: customText(context, "EMAIL ADDRESS",
                    size: 12,
                    fontFamily: "f",
                    color: AppColors.lightgrey,
                    textAlign: TextAlign.left),
              ),
              10.height,
              customTextFeild1("qazibilalahmad@somone.com"),
              20.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(context, "PASSWORD",
                      size: 12, fontFamily: "f", color: AppColors.lightgrey),
                  Icon(
                    Icons.visibility_off_rounded,
                    color: AppColors.lightgrey,
                  ),
                ],
              ),
              10.height,
              customTextFeild1("**********", obscureText: true),
              20.height,
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPasswordScreen()));
                },
                child: customText(context, "Forget Password?",
                    size: 12, fontFamily: "f", color: AppColors.black),
              ),
              20.height,
              GetStartedButton(
                  text: "SIGN IN",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomwPage()));
                  }),
              20.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customText(context, "Don't have an account?",
                      size: 14, fontFamily: "f", color: AppColors.lightgrey),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: customText(context, "Create new Account.",
                        size: 14,
                        fontFamily: "f",
                        color: AppColors.activeColor),
                  ),
                ],
              ),
              20.height,
              customText(context, "Or",
                  size: 24, color: AppColors.black, fontFamily: "f"),
              20.height,
              socialMediaButton(context, sw, "assets/icons/fb.png",
                  "Connect With Facebook", true),
              20.height,
              socialMediaButton(context, sw, "assets/icons/google.png",
                  "Connect With Google", false),
              50.height
            ],
          ),
        ),
      ),
    );
  }
}
