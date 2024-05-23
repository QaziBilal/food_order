import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/home/home.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/custom_textfield.dart';

import '../../helper/constants.dart';

class EnterAddressScreen extends StatelessWidget {
  EnterAddressScreen({super.key});
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            30.height,
            Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomwPage()));
                },
                icon: Icon(
                  Icons.close,
                  color: AppColors.black,
                ),
              ),
            ),
            20.height,
            customText(context, "Find restaurants near you",
                size: 23, color: AppColors.black, fontWeight: FontWeight.w600),
            20.height,
            customText(context,
                "Please enter your location or allow access to your location to find restaurants near you.",
                size: 15, color: AppColors.lightgrey),
            30.height,
            Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.activeColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImage(image: AppIcons.location, width: 30, height: 30),
                  10.width,
                  customText(context, "Use Current Location",
                      color: AppColors.activeColor, size: 18),
                ],
              ),
            ),
            20.height,
            CustomTextFeild(
              controller: address,
              labelText: "Enter a new Address",
            )
          ],
        ),
      ),
    );
  }
}
