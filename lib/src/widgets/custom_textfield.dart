import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../helper/constants.dart';

class CustomTextFeild extends StatefulWidget {
  String prefixIcon;
  String suffixIcon;
  TextEditingController controller;
  String labelText;
  bool obscureText;
  double width;
  double height;
  bool grey;
  var maxlines;
  bool iconCheck;
  bool color;
  final Function? ontap;

  CustomTextFeild(
      {this.prefixIcon = "",
      this.labelText = "",
      required this.controller,
      this.suffixIcon = "",
      this.obscureText = false,
      this.width = 20,
      this.height = 20,
      this.maxlines = 1,
      this.ontap,
      this.grey = false,
      this.color = true,
      this.iconCheck = false,
      super.key});

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      decoration: BoxDecoration(
          color: AppColors.lightgrey1,
          border: Border.all(color: AppColors.lightgrey.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        cursorColor: AppColors.black,
        controller: widget.controller,
        style: TextStyles.styleYu
            .copyWith(fontSize: 18, color: AppColors.lightgrey),
        maxLines: widget.maxlines,
        decoration: InputDecoration(
            isDense: true,
            border: InputBorder.none,
            hintText: widget.labelText,
            hintStyle: TextStyles.styleYu
                .copyWith(fontSize: 18, color: AppColors.lightgrey),
            prefixIconConstraints: const BoxConstraints(
                maxHeight: 30, maxWidth: 30, minHeight: 20, minWidth: 20),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: widget.iconCheck == false
                  ? Icon(
                      Icons.location_pin,
                      color: AppColors.lightgrey,
                      size: 20,
                    )
                  : Icon(
                      Icons.credit_card,
                      color: AppColors.black,
                    ),
            )),
        obscureText: widget.obscureText,
      ),
    );
  }
}

Widget customTextFeild1(hint, {bool obscureText = false, bool icon = false}) {
  return TextField(
    obscureText: obscureText == false ? false : true,
    cursorColor: AppColors.black,
    style: TextStyles.style.copyWith(
        fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.black),
    decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightgrey1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightgrey1),
        ),
        hintStyle: TextStyles.style.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        hintText: hint,
        suffixIcon: icon == true
            ? Icon(
                Icons.done,
                color: AppColors.activeColor,
              )
            : null),
    onTapOutside: (event) {
      FocusManager.instance.primaryFocus?.unfocus();
    },
  );
}
