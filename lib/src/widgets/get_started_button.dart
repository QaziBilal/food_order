import 'package:flutter/material.dart';

import '../helper/constants.dart';
import 'custom_text.dart';

class GetStartedButton extends StatelessWidget {
  String text;
  Function onPressed;
  GetStartedButton({required this.onPressed, this.text = "", super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: AppColors.activeColor,
        minimumSize: Size(sw * 0.9, 50),
      ),
      child: Center(
        child: customText(context, text == "" ? "GET STARTED" : text, size: 14),
      ),
    );
  }
}
