import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/widgets/customAppBar.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../helper/constants.dart';
import '../../model/filter_model.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int newindex = 0;
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, 50),
        child: CustomAppbar(
          name: "Filters",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Wrap(
              children: [
                rowWidget(
                  context,
                  "CATEGORIES",
                ),
                20.height,
                for (int i = 0; i < list1.length; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        list1[i].check = !list1[i].check;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: list1[i].check == true
                              ? AppColors.activeColor
                              : AppColors.lightgrey1,
                          borderRadius: BorderRadius.circular(5)),
                      child: customText(context, list1[i].item,
                          color: AppColors.black, size: 14),
                    ),
                  ),
              ],
            ),
            20.height,
            Wrap(
              children: [
                rowWidget(
                  context,
                  "DIETRY",
                ),
                20.height,
                for (int i = 0; i < list2.length; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        list2[i].check = !list2[i].check;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: list2[i].check == true
                              ? AppColors.lightgrey1
                              : AppColors.activeColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: customText(context, list2[i].item,
                          color: AppColors.black, size: 14),
                    ),
                  ),
              ],
            ),
            20.height,
            rowWidget(context, "PRICE RANGE"),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          newindex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: newindex == index
                                ? AppColors.activeColor
                                : AppColors.lightgrey1,
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.lightgrey)),
                        child: Center(
                          child: customText(context, "\$" * (index + 1),
                              size: 14, color: AppColors.black),
                        ),
                      ),
                    );
                  }),
            ),
            20.height,
            Spacer(),
            GetStartedButton(
              onPressed: () {},
              text: "APPLY FILTERS",
            ),
            40.height,
          ],
        ),
      ),
    );
  }

  Widget rowWidget(context, text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customText(context, text,
            color: AppColors.black, fontFamily: "fs", size: 16),
        customText(context, "CLEAR ALL",
            color: AppColors.lightgrey, fontFamily: "fs", size: 13),
      ],
    );
  }
}






//  20.height,
//             rowWidget(context, "DIETRY"),
//             Wrap(
//               children: [
//                 for (int i = 0; i < list2.length; i++)
//                   Container(
//                     margin:
//                         EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
//                     padding:
//                         EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
//                     decoration: BoxDecoration(
//                         color: AppColors.lightgrey1,
//                         borderRadius: BorderRadius.circular(5)),
//                     child: customText(context, list2[i],
//                         color: AppColors.black, size: 14),
//                   ),
//               ],
//             ),
//             20.height,
