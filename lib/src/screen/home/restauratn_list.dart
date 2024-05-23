import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

class ResturantListScreen extends StatelessWidget {
  const ResturantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, sh * 0.4),
        child: Stack(
          children: [
            CustomImage(
              image: AppImages.map,
              width: sw,
              height: sh * 0.4,
              fit: BoxFit.cover,
            ),
            Positioned(
                left: 20,
                right: 20,
                top: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.white,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.white,
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: AppColors.black,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                customText(context, "Top Pick Resturants",
                    size: 20, color: AppColors.black),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
