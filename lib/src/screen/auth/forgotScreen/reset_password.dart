import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../../helper/constants.dart';
import '../../../widgets/customAppBar.dart';
import '../../../widgets/custom_text.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(sw, 40),
          child: CustomAppbar(name: "Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: customText(context, "Reset email sent",
                  size: 30, color: AppColors.black, fontFamily: "f"),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: customText(context, "We have sent a instructions email to",
                  size: 14, color: AppColors.lightgrey, fontFamily: "f"),
            ),
            Row(
              children: [
                customText(context, "sajin tamang@figma.com",
                    size: 14, fontFamily: "f", color: AppColors.lightgrey),
                20.width,
                customText(context, "Having any Problem?",
                    size: 14, fontFamily: "f", color: AppColors.activeColor),
              ],
            ),
            25.height,
            GetStartedButton(
              onPressed: () {},
              text: "SEND AGAIN ",
            ),
            70.height,
            CustomImage(
              image: AppImages.onboarding4,
              width: sw * 0.8,
              height: sw * 0.8,
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
