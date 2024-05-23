import 'package:flutter/material.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

import '../helper/constants.dart';
import '../screen/home/featurePartnerScreen.dart';

Widget rowMenu(context, screenName, text) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: customText(context, text,
              textAlign: TextAlign.left, size: 23, color: AppColors.black),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => screenName));
          },
          child: customText(context, "See All",
              size: 16, color: AppColors.activeColor),
        ),
      ],
    ),
  );
}
