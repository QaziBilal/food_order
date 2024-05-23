import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/model/itemModel.dart';
import 'package:food_order_app/src/model/restaurantModel.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  bool index = false;

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 40),
        child: CustomAppbar(name: "Mac Donals"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              10.height,
                              ListTile(
                                titleAlignment: ListTileTitleAlignment.top,
                                leading: Container(
                                  width: 30,
                                  height: 30,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: AppColors.lightgrey)),
                                  child: Center(
                                    child: customText(context, "${index + 1}",
                                        color: AppColors.activeColor),
                                  ),
                                ),
                                title: customText(
                                    context, resturants[index].name,
                                    color: AppColors.black,
                                    fontFamily: "f",
                                    size: 18,
                                    textAlign: TextAlign.left),
                                subtitle: customText(context,
                                    "Shortbread, chocolate turtle cookies, and red velvet.",
                                    textAlign: TextAlign.left,
                                    color: AppColors.lightgrey,
                                    size: 15),
                                trailing: customText(context, "AUD\$10",
                                    size: 14, color: AppColors.activeColor),
                              ),
                              Divider()
                            ],
                          );
                        }),
                    50.height,
                    if (index == false) ...[
                      20.height,
                      rowWithText(context, "Subtotal",
                          secondtext: "\$0", check: true),
                      20.height,
                      rowWithText(context, "AUD\$30",
                          secondtext: "\$0", check: true),
                      20.height,
                      rowWithText(context, "Total (inc. VAT)",
                          check: true, secondtext: "AUD\$30", textcolor: true),
                      20.height,
                      rowWithText(
                        context,
                        "Add more items",
                        firstTextColor: true,
                      ),
                      20.height,
                      rowWithText(context, "Promo Code"),
                    ] else ...[
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 60, bottom: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF8EDDC)),
                            child: Column(
                              children: [
                                customText(
                                    context, "You Place the Order Successfully",
                                    size: 22,
                                    color: AppColors.black,
                                    fontFamily: "p"),
                                20.height,
                                customText(context,
                                    "You placed the order successfully. You will get your food within 25 minutes. Thanks for using our services. Enjoy your food :)",
                                    size: 16, color: AppColors.lightgrey),
                                40.height,
                                customText(context, "KEEP BROWSING",
                                    color: AppColors.activeColor, size: 18)
                              ],
                            ),
                          ),
                          Positioned(
                            top: -25,
                            left: sw * 0.37,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: AppColors.activeColor,
                              child: Center(
                                child: Icon(
                                  Icons.done,
                                  color: AppColors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                    100.height
                  ],
                ),
              ),
            ),
            if (index == false)
              Positioned(
                  bottom: 20,
                  right: sw * 0.05,
                  left: sw * 0.05,
                  child: GetStartedButton(
                    onPressed: () {
                      setState(() {
                        index = !index;
                      });
                    },
                    text: "CHECKOUT (AUD \$30)",
                  ))
          ],
        ),
      ),
    );
  }

  Widget rowWithText(context, text,
      {bool check = false,
      bool firstTextColor = false,
      bool textcolor = false,
      String secondtext = ""}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(context, text,
                size: 17,
                fontFamily: check == false ? "f" : "Poppins",
                color: firstTextColor == false
                    ? AppColors.black
                    : AppColors.activeColor),
            check == false
                ? Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.black,
                    size: 20,
                  )
                : customText(context, secondtext,
                    size: 17,
                    color: textcolor == true
                        ? AppColors.activeColor
                        : AppColors.black),
          ],
        ),
        if (check == false) Divider(),
      ],
    );
  }
}
