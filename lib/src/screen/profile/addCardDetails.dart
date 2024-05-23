import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/custom_textfield.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../helper/constants.dart';

class AddCardDetailsScreen extends StatelessWidget {
  AddCardDetailsScreen({super.key});
  TextEditingController cardnumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 50),
        child: CustomAppbar(name: ""),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            customText(context, "Add your Card Details",
                size: 20, color: AppColors.black),
            20.height,
            customText(context,
                "This card will only be charged when you place an order.",
                color: AppColors.lightgrey, size: 16),
            20.height,
            CustomTextFeild(
              controller: cardnumber,
              labelText: "4343 4343 4343 4343 4334",
              iconCheck: true,
            ),
            20.height,
            Row(
              children: [
                Expanded(
                    child: CustomTextFeild(
                  controller: cardnumber,
                  labelText: "MM/YY",
                  iconCheck: true,
                )),
                10.width,
                Expanded(
                    child: CustomTextFeild(
                  controller: cardnumber,
                  iconCheck: true,
                  labelText: "CVC",
                ))
              ],
            ),
            Spacer(),
            GetStartedButton(
              onPressed: () {},
              text: "ADD CARD",
            ),
            40.height
          ],
        ),
      ),
    );
  }
}
