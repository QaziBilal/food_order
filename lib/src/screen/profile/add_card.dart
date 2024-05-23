import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/profile/cards_list.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';

import '../../widgets/customAppBar.dart';
import '../../widgets/custom_text.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

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
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: -70,
                  child: CustomImage(
                    image: AppIcons.active,
                    width: sw * 0.4,
                    height: sw * 0.4,
                    fit: BoxFit.contain,
                  ),
                ),
                CustomImage(
                  image: AppIcons.cardSize,
                  width: sw * 0.4,
                  height: sw * 0.4,
                  fit: BoxFit.contain,
                )
              ],
            ),
            20.height,
            customText(context, "Don’t have any card :)",
                color: AppColors.black, size: 24, fontWeight: FontWeight.w600),
            20.height,
            customText(context,
                "It’s seems like you have not added any credit or debit card. You may easily add card.",
                size: 18, color: AppColors.lightgrey),
            20.height,
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CardListScreen()));
              },
              child: Container(
                width: sw * 0.7,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(color: AppColors.activeColor)),
                child: Center(
                  child: customText(context, "ADD CREDIT CARDS",
                      color: AppColors.black, size: 17),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
