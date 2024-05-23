import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/home/productDetail.dart';
import 'package:food_order_app/src/screen/order/order_detail.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

import '../home/singleResturant.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;

    return Scaffold(
        appBar: AppBar(
          title: customText(context, "Your Orders",
              size: 18, color: AppColors.black),
          centerTitle: true,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(context, "UPCOMING ORDERS",
                        color: AppColors.lightgrey, fontFamily: "f", size: 14),
                    customText(context, "CLEAR ALL",
                        color: AppColors.lightgrey,
                        size: 14,
                        fontWeight: FontWeight.w500)
                  ],
                ),
                20.height,
                customlistview(sh, sw, OrderDetail(), check: true),
                Align(
                    alignment: Alignment.bottomRight,
                    child: customText(context, "Proceed Payments",
                        size: 16, color: AppColors.activeColor)),
                40.height,
                Opacity(
                  opacity: 0.3,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText(context, "PAST ORDERS",
                              color: AppColors.lightgrey,
                              fontFamily: "f",
                              size: 14),
                          customText(context, "CLEAR ALL",
                              color: AppColors.lightgrey,
                              size: 14,
                              fontWeight: FontWeight.w500)
                        ],
                      ),
                      customlistview(sh, sw, null, check: true)
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
