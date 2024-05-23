import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/auth/verify_number.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/custom_textfield.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EnterPhoneNumber extends StatelessWidget {
  const EnterPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 50),
        child: CustomAppbar(name: "Login to Tamang Food \n Services"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            customText(context, "Get started with Foodly",
                size: 24, color: AppColors.black, fontWeight: FontWeight.w500),
            10.height,
            customText(context,
                "Enter your phone number to use foodly and enjoy your food :)",
                color: AppColors.lightgrey, fontFamily: "s", size: 15),
            20.height,
            Align(
              alignment: Alignment.bottomLeft,
              child: customText(context, "PHONE NUMBER",
                  color: AppColors.lightgrey, fontFamily: "s", size: 15),
            ),
            IntlPhoneField(
              dropdownTextStyle: TextStyles.style.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
              style: TextStyles.style.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
              disableLengthCheck: true,
              decoration: InputDecoration(
                hintText: '3480998930',
                hintStyle: TextStyles.style.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightgrey,
                ),
                border: InputBorder.none,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.lightgrey1),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.lightgrey1),
                ),
              ),
              initialCountryCode: '+92',
            ),
            const Spacer(),
            GetStartedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VerfiyNumber()));
              },
              text: "SEND CODE",
            ),
            40.height
          ],
        ),
      ),
    );
  }
}
