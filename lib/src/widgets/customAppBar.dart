import 'package:flutter/material.dart';

import '../helper/constants.dart';
import 'custom_text.dart';

class CustomAppbar extends StatelessWidget {
  String name;
  CustomAppbar({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 18,
        ),
      ),
      title: customText(context, name,
          size: 18, fontWeight: FontWeight.w500, color: AppColors.black),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
    );
  }
}
