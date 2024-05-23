import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/auth/on_boardingScreen.dart';
import 'package:food_order_app/src/widgets/custom_textfield.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';
import 'package:food_order_app/src/widgets/socialMediaButton.dart';

import '../../widgets/customAppBar.dart';
import '../../widgets/custom_text.dart';

class AddSocialMediaAccount extends StatelessWidget {
  const AddSocialMediaAccount({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 40),
        child: CustomAppbar(name: "Add Social Accounts"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customText(context, "Add Social Accounts",
                color: AppColors.black, size: 24, fontWeight: FontWeight.w600),
            20.height,
            customText(context,
                "Add your social accounts for more security. You will go directly to their site.",
                size: 18, color: AppColors.lightgrey),
            20.height,
            socialMediaButton(context, sw, "assets/icons/fb.png",
                "Connect With Facebook", true),
            20.height,
            socialMediaButton(context, sw, "assets/icons/google.png",
                "Connect With Google", false),
          ],
        ),
      ),
    );
  }
}
