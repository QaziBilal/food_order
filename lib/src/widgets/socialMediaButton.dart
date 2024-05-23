import 'package:flutter/material.dart';

import '../helper/constants.dart';
import 'custom_image.dart';
import 'custom_text.dart';

Widget socialMediaButton(context, sw, image, text, bool check) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: check == true ? AppColors.facebook : AppColors.google,
      minimumSize: Size(sw * 0.9, 40),
    ),
    child: Row(
      children: [
        Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: 30,
            height: 30,
            padding: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
            decoration: BoxDecoration(
                color: AppColors.white, borderRadius: BorderRadius.circular(4)),
            child: CustomImage(
              image: image,
              width: 20,
              height: 20,
              fit: BoxFit.fitHeight,
            )),
        SizedBox(
          width: sw * 0.1,
        ),
        customText(context, text, size: 14),
      ],
    ),
  );
}
