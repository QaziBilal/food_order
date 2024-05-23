import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/screen/order/order_detail.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/get_started_button.dart';

import '../../helper/constants.dart';
import '../../model/cookieModel.dart';
import '../../model/itemModel.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  AppImages.image11,
                  width: sw,
                  height: sh * 0.35,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 40,
                  left: 40,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColors.lightgrey.withOpacity(0.8),
                      radius: 20,
                      child: Center(
                          child: Icon(
                        Icons.close,
                        size: 20,
                        color: AppColors.white,
                      )),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: customText(context, "Cookie Sanwich",
                  size: 23,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: customText(context,
                  "Shortbread, chocolate turtle cookies, and red velvet. 8 ounces cream cheese, softened.",
                  color: AppColors.black, textAlign: TextAlign.left, size: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  customText(context, "\$\$",
                      size: 13, color: AppColors.lightgrey, fontFamily: "f"),
                  10.width,
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: AppColors.lightgrey,
                  ),
                  5.width,
                  customText(context, " ${items[0].type1}",
                      size: 13, color: AppColors.lightgrey, fontFamily: "f"),
                  10.width,
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: AppColors.lightgrey,
                  ),
                  5.width,
                  customText(context, items[0].type2,
                      size: 13, color: AppColors.lightgrey, fontFamily: "f"),
                  10.width,
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: AppColors.lightgrey,
                  ),
                  5.width,
                  customText(context, items[0].type3,
                      size: 13, color: AppColors.lightgrey, fontFamily: "f"),
                ],
              ),
            ),
            20.height,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(context, "Choice of top Cookie",
                      color: AppColors.black, size: 18),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 7, top: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.activeColor.withOpacity(0.3),
                    ),
                    child: Center(
                      child: customText(context, "REQUIRED",
                          size: 12, color: AppColors.activeColor),
                    ),
                  )
                ],
              ),
            ),
            20.height,
            const CookieList(),
            20.height,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(context, "Choice of Bottom Cookie",
                      color: AppColors.black, size: 18),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 7, top: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.activeColor.withOpacity(0.3),
                    ),
                    child: Center(
                      child: customText(context, "REQUIRED",
                          size: 12, color: AppColors.activeColor),
                    ),
                  )
                ],
              ),
            ),
            20.height,
            const CookieList(),
            10.height,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(context, "Add Special Instructions",
                      color: AppColors.black, fontFamily: "o", size: 15),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Divider(
                height: 1,
                color: AppColors.lightgrey1,
              ),
            ),
            20.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.lightgrey1,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.lightgrey, width: 1)),
                  child: Center(
                    child: customText(context, "-",
                        size: 20, color: AppColors.black),
                  ),
                ),
                10.width,
                customText(context, "01",
                    color: AppColors.black, fontFamily: "p", size: 18),
                10.width,
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.lightgrey1,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.lightgrey, width: 1)),
                  child: Center(
                    child: customText(context, "+",
                        size: 20, color: AppColors.black),
                  ),
                ),
              ],
            ),
            20.height,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GetStartedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderDetail()));
                },
                text: "ADD TO ORDER (\$11.98)",
              ),
            ),
            40.height
          ],
        ),
      ),
    );
  }
}

class CookieList extends StatefulWidget {
  const CookieList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CookieListState createState() => _CookieListState();
}

class _CookieListState extends State<CookieList> {
  List<CookieType> cookieTypes = [
    CookieType('Chocolate Chip'),
    CookieType('Oatmeal Raisin'),
    CookieType('Peanut Butter'),
    CookieType('Snickerdoodle'),
    CookieType('Sugar Cookie'),
    CookieType('Double Chocolate'),
    CookieType('Macadamia Nut'),
    CookieType('Shortbread'),
    CookieType('Gingerbread'),
    CookieType('White Chocolate Macadamia'),
  ];

  String selectedCookie = '';

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 0, left: 20, right: 0, bottom: 10),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cookieTypes.length,
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 1,
        color: AppColors.lightgrey1,
      ),
      itemBuilder: (BuildContext context, int index) {
        CookieType cookieType = cookieTypes[index];
        return CustomRadioListTile(
          title: cookieType.name,
          value: cookieType.name,
          groupValue: selectedCookie,
          onChanged: (value) {
            setState(() {
              selectedCookie = value;
            });
          },
          circleSize: 40.0, // Set the custom circle size here
        );
      },
    );
  }
}

class CustomRadioListTile extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final Function onChanged;
  final double circleSize;

  const CustomRadioListTile({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.circleSize = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, bottom: 10, right: 20, top: 10),
        child: Row(
          children: <Widget>[
            Container(
              width: circleSize * 0.5,
              height: circleSize * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2.0,
                  color:
                      groupValue == value ? AppColors.activeColor : Colors.grey,
                ),
              ),
              child: Center(
                child: Container(
                  width: circleSize * 0.3,
                  height: circleSize * 0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: groupValue == value
                        ? AppColors.activeColor
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            customText(context, title,
                size: 16, color: AppColors.black, fontFamily: "f"),
          ],
        ),
      ),
    );
  }
}
