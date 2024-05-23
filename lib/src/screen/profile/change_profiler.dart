import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/profile/change_password.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../helper/constants.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfield.dart';

class ChangeProfile extends StatelessWidget {
  const ChangeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 40),
        child: CustomAppbar(name: "Profile Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
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
            customTextFeild1("qazibilalahmad@gmail.com"),
            20.height,
            Align(
              alignment: Alignment.centerLeft,
              child: customText(context, "PHONE NUMBER",
                  size: 12,
                  fontFamily: "f",
                  color: AppColors.lightgrey,
                  textAlign: TextAlign.left),
            ),
            10.height,
            customTextFeild1("+92 3480998930"),
            20.height,
            Align(
              alignment: Alignment.centerLeft,
              child: customText(context, "PASSWORD",
                  size: 12,
                  fontFamily: "f",
                  color: AppColors.lightgrey,
                  textAlign: TextAlign.left),
            ),
            10.height,
            TextField(
              obscureText: true,
              cursorColor: AppColors.black,
              style: TextStyles.style.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightgrey1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightgrey1),
                  ),
                  hintStyle: TextStyles.style.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                  hintText: "**********",
                  suffixIcon: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangePassword()));
                      },
                      child: customText(context, "CHANGE",
                          color: AppColors.activeColor, size: 15))),
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
            ),
            Spacer(),
            GetStartedButton(
              onPressed: () {},
              text: "CHANGE SETTINGS",
            ),
            40.height
          ],
        ),
      ),
    );
  }
}
