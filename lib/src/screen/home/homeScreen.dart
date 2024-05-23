import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/model/itemModel.dart';
import 'package:food_order_app/src/model/restaurantModel.dart';
import 'package:food_order_app/src/screen/home/featurePartnerScreen.dart';
import 'package:food_order_app/src/screen/home/filer_screen.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';
import 'package:food_order_app/src/widgets/rowWidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          scrolledUnderElevation: 0,
          title: Column(
            children: [
              customText(context, "DELIVERY TO",
                  size: 12, color: AppColors.activeColor, fontFamily: "f"),
              Wrap(
                children: [
                  customText(context, " HayStreet, Perth",
                      fontFamily: "f", color: AppColors.black, size: 20),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 20,
                    color: AppColors.black,
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FilterScreen()));
                },
                child: customText(context, "Filter",
                    size: 15,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              20.height,
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CarouselSlider(
                      items: [
                        slider(sw, sh, AppImages.image6),
                        slider(sw, sh, AppImages.image7),
                        slider(sw, sh, AppImages.image9),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 2),
                        scrollPhysics: BouncingScrollPhysics(),
                        aspectRatio: 1.8,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      )),
                  Positioned(
                      right: 40,
                      bottom: 25,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Container(
                                  decoration: BoxDecoration(
                                      color: _currentIndex == index
                                          ? AppColors.white
                                          : AppColors.black.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(15)),
                                  margin: EdgeInsets.only(right: 5),
                                  height: 10,
                                  width: 15,
                                )),
                      ))
                ],
              ),
              20.height,
              rowMenu(context, FeaturedScreen(), "Featured Partners"),
              5.height,
              listofItems(sw, items),
              20.height,
              rowMenu(context, () {}, "Best Picks Restaurants by Team"),
              5.height,
              listofResturants(sw, resturants),
              20.height,
              rowMenu(context, () {}, "All Restaurants"),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: resturants.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            CarouselSlider(
                                items: [
                                  slider(sw, sh, AppImages.image2),
                                  slider(sw, sh, AppImages.image3),
                                  slider(sw, sh, AppImages.image1),
                                ],
                                options: CarouselOptions(
                                  autoPlay: true,
                                  autoPlayAnimationDuration:
                                      Duration(seconds: 2),
                                  scrollPhysics: BouncingScrollPhysics(),
                                  aspectRatio: 1.8,
                                  viewportFraction: 1,
                                )),
                            Positioned(
                                right: 30,
                                bottom: 25,
                                child: Row(
                                  children: List.generate(
                                      3,
                                      (index) => Container(
                                            decoration: BoxDecoration(
                                                color: _currentIndex == index
                                                    ? AppColors.white
                                                    : AppColors.black
                                                        .withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            margin: EdgeInsets.only(right: 5),
                                            height: 10,
                                            width: 15,
                                          )),
                                ))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(context, resturants[index].name,
                                  color: AppColors.black,
                                  size: 20,
                                  fontFamily: "f"),
                              Row(
                                children: [
                                  customText(context, "\$\$",
                                      size: 13,
                                      color: AppColors.lightgrey,
                                      fontFamily: "f"),
                                  10.width,
                                  CircleAvatar(
                                    radius: 2,
                                    backgroundColor: AppColors.lightgrey,
                                  ),
                                  5.width,
                                  customText(context, " ${items[index].type1}",
                                      size: 13,
                                      color: AppColors.lightgrey,
                                      fontFamily: "f"),
                                  10.width,
                                  CircleAvatar(
                                    radius: 2,
                                    backgroundColor: AppColors.lightgrey,
                                  ),
                                  5.width,
                                  customText(context, items[index].type2,
                                      size: 13,
                                      color: AppColors.lightgrey,
                                      fontFamily: "f"),
                                  10.width,
                                  CircleAvatar(
                                    radius: 2,
                                    backgroundColor: AppColors.lightgrey,
                                  ),
                                  5.width,
                                  customText(context, items[index].type3,
                                      size: 13,
                                      color: AppColors.lightgrey,
                                      fontFamily: "f"),
                                ],
                              ),
                              5.height,
                              Row(
                                children: [
                                  customText(context, items[index].rating,
                                      size: 13,
                                      color: AppColors.lightgrey,
                                      fontFamily: "f"),
                                  5.width,
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: AppColors.activeColor,
                                  ),
                                  5.width,
                                  customText(context, "200+ ratings",
                                      size: 13,
                                      color: AppColors.lightgrey,
                                      fontFamily: "f"),
                                  10.width,
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.watch_later,
                                        color: AppColors.grey,
                                        size: 20,
                                      ),
                                      5.width,
                                      customText(context, "25 Min",
                                          size: 13,
                                          color: AppColors.lightgrey,
                                          fontFamily: "f"),
                                    ],
                                  ),
                                  10.width,
                                  Row(
                                    children: [
                                      CustomImage(
                                          image: AppIcons.dollar,
                                          width: 20,
                                          height: 20),
                                      5.width,
                                      customText(context, "Free",
                                          size: 13,
                                          color: AppColors.lightgrey,
                                          fontFamily: "f"),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        20.height
                      ],
                    );
                  })
            ]),
          ),
        ));
  }

  Widget listofItems(sw, List item) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
          itemCount: item.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 220,
                    width: sw * 0.6,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CustomImage(
                      image: item[index].image,
                      width: sw * 0.6,
                      height: 220,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: sw * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item[index].name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.styleYu
                            .copyWith(fontSize: 20, color: AppColors.black),
                      ),
                      customText(context, item[index].resturant,
                          size: 16,
                          fontFamily: "f",
                          color: AppColors.lightgrey,
                          fontWeight: FontWeight.w400),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 5, bottom: 5, left: 15, right: 15),
                            decoration: BoxDecoration(
                                color: AppColors.activeColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: customText(context, item[index].rating,
                                  size: 12, fontWeight: FontWeight.w600),
                            ),
                          ),
                          10.width,
                          customText(context, items[index].deliveryTime,
                              color: AppColors.lightgrey,
                              size: 13,
                              fontFamily: "f"),
                          10.width,
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: AppColors.lightgrey,
                          ),
                          Expanded(
                            child: customText(context, " Free Delivery",
                                size: 13,
                                color: AppColors.lightgrey,
                                fontFamily: "f"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }

  Widget listofResturants(sw, List<RestaurantModel> res) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 20),
          itemCount: res.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 220,
                    width: sw * 0.6,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CustomImage(
                      image: res[index].image,
                      width: sw * 0.6,
                      height: 220,
                      fit: BoxFit.cover,
                    )),
                10.height,
                customText(context, res[index].name,
                    size: 20, fontFamily: 'f', color: AppColors.black),
                customText(context, items[index].resturant,
                    size: 16, fontFamily: "f", color: AppColors.lightgrey),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: AppColors.activeColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: customText(context, res[index].rating,
                            size: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                    10.width,
                    customText(context, items[index].deliveryTime,
                        color: AppColors.lightgrey, size: 13, fontFamily: "f"),
                    10.width,
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: AppColors.lightgrey,
                    ),
                    customText(context, " Free Delivery",
                        size: 13, color: AppColors.lightgrey, fontFamily: "f")
                  ],
                )
              ],
            );
          }),
    );
  }

  Widget slider(sw, sh, image) {
    return SizedBox(
      width: sw * 0.9,
      height: sh * 0.25,
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: CustomImage(
            image: image,
            width: sw * 0.9,
            height: sh * 0.25,
            fit: BoxFit.cover,
          )),
    );
  }
}
