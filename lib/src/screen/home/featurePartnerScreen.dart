import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/model/itemModel.dart';
import 'package:food_order_app/src/screen/home/singleResturant.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';

import '../../helper/constants.dart';
import '../../widgets/custom_text.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 40),
        child: CustomAppbar(
          name: "Featured Partners",
        ),
      ),
      body: SafeArea(
          child: GridView.builder(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.5,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleDetailScreen()));
                  },
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              items[index].image,
                              width: sw * 0.42,
                              height: sh * 0.3,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomImage(
                                          image: AppIcons.fastDelivery,
                                          width: 25,
                                          height: 25),
                                      5.width,
                                      customText(
                                          context, items[index].deliveryTime,
                                          size: 12),
                                    ],
                                  ),
                                  10.height,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CustomImage(
                                              image: AppIcons.dollar,
                                              width: 25,
                                              height: 25),
                                          3.width,
                                          customText(context,
                                              items[index].deliveryTime,
                                              size: 12),
                                        ],
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            right: 10,
                                            bottom: 5,
                                            left: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: AppColors.activeColor),
                                        child: Center(
                                          child: customText(
                                              context, items[index].rating),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                      5.height,
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            items[index].name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyles.styleYu.copyWith(
                                fontSize: 20,
                                color: AppColors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: AppColors.grey,
                            ),
                            5.width,
                            customText(context, items[index].type1,
                                color: AppColors.lightgrey, size: 15),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
