import 'package:flutter/material.dart';

import '../helper/constants.dart';
import 'custom_image.dart';
import 'custom_text.dart';

Widget splashWidgetHeader(sw, sh, context) {
  return Positioned(
    top: sh * 0.08,
    left: 20,
    right: 20,
    child: Row(
      children: [
        CustomImage(
          image: AppImages.logo,
          width: sw * 0.15,
          height: sw * 0.15,
          fit: BoxFit.fill,
        ),
        Expanded(
          child: Text(
            "Tamang FoodService",
            textAlign: TextAlign.center,
            textScaleFactor: ScaleSize.textScaleFactor(context),
            style: TextStyles.style.copyWith(
              fontFamily: "Poppins",
              fontSize: 37,
              color: AppColors.black,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.2,
              height: 1.1,
            ),
          ),
        ),
      ],
    ),
  );
}
