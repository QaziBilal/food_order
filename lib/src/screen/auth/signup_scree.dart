import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/auth/signin.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../widgets/customAppBar.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/socialMediaButton.dart';
import 'enter_phone_number.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(sw, 40), child: CustomAppbar(name: "Sign up")),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.height,
              customText(context, "Create Account",
                  size: 30,
                  color: AppColors.black,
                  fontFamily: "ksdhaf",
                  textAlign: TextAlign.left),
              10.height,
              Wrap(
                children: [
                  customText(context,
                      "Enter your Name, Email and Password for sign up.",
                      size: 16,
                      color: AppColors.lightgrey,
                      fontFamily: "ksdhaf",
                      textAlign: TextAlign.left),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                      child: customText(context, "Already have an Account?",
                          size: 14,
                          fontFamily: "f",
                          color: AppColors.activeColor),
                    ),
                  ),
                ],
              ),
              20.height,
              Align(
                alignment: Alignment.centerLeft,
                child: customText(context, "FULL NAME",
                    size: 12,
                    fontFamily: "f",
                    color: AppColors.lightgrey,
                    textAlign: TextAlign.left),
              ),
              10.height,
              customTextFeild1("Qazi Bilal"),
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
              GetStartedButton(
                  text: "SIGN UP",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EnterPhoneNumber()));
                  }),
              20.height,
              customText(
                context,
                "By Signing up you agree to our Terms Conditions & Privacy Policy.",
                size: 15,
                color: AppColors.lightgrey,
              ),
              20.height,
              Align(
                alignment: Alignment.bottomCenter,
                child: customText(context, "Or",
                    size: 24, color: AppColors.black, fontFamily: "f"),
              ),
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
