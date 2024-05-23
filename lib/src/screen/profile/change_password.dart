import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/widgets/custom_textfield.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../widgets/customAppBar.dart';
import '../../widgets/custom_text.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 40),
        child: CustomAppbar(name: "Change Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(context, "NEW PASSWORD",
                    size: 12, fontFamily: "f", color: AppColors.lightgrey),
                Icon(
                  Icons.visibility_off_rounded,
                  color: AppColors.lightgrey,
                ),
              ],
            ),
            10.height,
            customTextFeild1("", obscureText: true),
            20.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(context, "CONFIRM PASSWORD",
                    size: 12, fontFamily: "f", color: AppColors.lightgrey),
                Icon(
                  Icons.visibility_off_rounded,
                  color: AppColors.lightgrey,
                ),
              ],
            ),
            10.height,
            customTextFeild1("", obscureText: true),
            Spacer(),
            GetStartedButton(
              onPressed: () {},
              text: "CHANGE PASSWORD",
            ),
            40.height,
          ],
        ),
      ),
    );
  }
}
