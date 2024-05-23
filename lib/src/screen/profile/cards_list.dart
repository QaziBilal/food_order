import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/screen/profile/addCardDetails.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 40),
        child: CustomAppbar(name: "Payment Methods"),
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddCardDetailsScreen()));
                  },
                  leading: CustomImage(
                    image: AppImages.paypal,
                    width: sw * 0.2,
                    height: sw * 0.2,
                    fit: BoxFit.contain,
                  ),
                  title: customText(context, "Paypal",
                      textAlign: TextAlign.left,
                      color: AppColors.black,
                      size: 17,
                      fontFamily: "p"),
                  subtitle: customText(
                    context,
                    "Default Payment",
                    textAlign: TextAlign.left,
                    color: AppColors.lightgrey,
                    size: 13,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: AppColors.black,
                  ),
                );
              })
        ],
      ),
    );
  }
}
