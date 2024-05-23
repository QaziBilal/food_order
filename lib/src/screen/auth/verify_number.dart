import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/auth/enter_address.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../widgets/customAppBar.dart';

class VerfiyNumber extends StatelessWidget {
  const VerfiyNumber({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(sw, 40),
          child: CustomAppbar(name: "Login to Foodly")),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            customText(context, "Verify Phone Number",
                size: 20, color: AppColors.black),
            10.height,
            customText(
                context, "Enter the 4-Digit code sent to you at +610489632578",
                size: 15, color: AppColors.lightgrey, fontFamily: "p"),
            50.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textbox(context, sw),
                textbox(context, sw),
                textbox(context, sw),
                textbox(context, sw),
              ],
            ),
            30.height,
            GetStartedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EnterAddressScreen()));
              },
              text: "CONTINUE",
            ),
            20.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customText(context, "Didn’t receive code?",
                    size: 15, fontFamily: "f", color: AppColors.lightgrey),
                customText(context, "Resend Again.",
                    size: 15, fontFamily: "f", color: AppColors.activeColor),
              ],
            ),
            20.height,
            customText(context,
                "By Signing up you agree to our Terms Conditions & Privacy Policy.",
                size: 16, color: AppColors.lightgrey)
          ],
        ),
      ),
    );
  }

  Widget textbox(context, sw) {
    return SizedBox(
      width: sw * 0.1,
      height: sw * 0.1,
      child: Center(
        child: TextFormField(
          cursorColor: AppColors.green,
          style: TextStyles.style.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.black),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          decoration: InputDecoration(
              hintStyle: TextStyles.style.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightgrey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightgrey),
              ),
              isDense: true,
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
