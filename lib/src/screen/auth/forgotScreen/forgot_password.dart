import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/auth/forgotScreen/reset_password.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/custom_textfield.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(sw, 40),
          child: CustomAppbar(name: "Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(context, "Forgot Password",
                textAlign: TextAlign.left,
                size: 30,
                color: AppColors.black,
                fontFamily: "f"),
            customText(context,
                "Enter your email address and we will send you a reset instructions.",
                textAlign: TextAlign.left,
                size: 14,
                color: AppColors.lightgrey,
                fontFamily: "f"),
            30.height,
            Align(
              alignment: Alignment.centerLeft,
              child: customText(context, "EMAIL ADDRESS",
                  size: 12,
                  fontFamily: "f",
                  color: AppColors.lightgrey,
                  textAlign: TextAlign.left),
            ),
            10.height,
            customTextFeild1("qazibilal@gmail.com"),
            30.height,
            GetStartedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()));
              },
              text: "RESET PASSOWRD",
            ),
            70.height,
          ],
        ),
      ),
    );
  }
}
