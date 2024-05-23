import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/model/restaurantModel.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/custom_textfield.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  TextEditingController searchController = TextEditingController();
  List<String> list = ["Chawal", "Pani"];

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(sw, 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                title: customText(context, "Search",
                    size: 20,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600),
                automaticallyImplyLeading: false,
                scrolledUnderElevation: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                // child: CustomTextFeild(
                //   controller: searchController,
                //   labelText: "Search on Foodly",
                // ),
                child: Autocomplete<String>(
                  optionsBuilder: (textEdidingValue) {
                    if (textEdidingValue.text.isEmpty) {
                      return List.empty();
                    } else {
                      return list.where((String item) {
                        return item.contains(textEdidingValue.text);
                      });
                    }
                  },
                  fieldViewBuilder: (context, searchController,
                      FocusNode focusNode, VoidCallback onFieldSubmitted) {
                    return CustomTextFeild(controller: searchController);
                  },
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.height,
                customText(context, "Top Restaurants",
                    size: 20,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500),
                20.height,
                GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: resturants.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.8, crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: CustomImage(
                              image: resturants[index].image,
                              width: sw * 0.4,
                              height: sw * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          5.height,
                          SizedBox(
                            width: sw * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  resturants[index].name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyles.styleYu.copyWith(fontSize: 18),
                                ),
                                2.height,
                                Row(
                                  children: [
                                    customText(
                                      context,
                                      "\$\$",
                                      color: AppColors.lightgrey,
                                      size: 12,
                                    ),
                                    10.width,
                                    CircleAvatar(
                                      radius: 2,
                                      backgroundColor: AppColors.lightgrey,
                                    ),
                                    2.width,
                                    customText(context, "Chinease",
                                        color: AppColors.lightgrey, size: 12)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
