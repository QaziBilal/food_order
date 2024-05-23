import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/model/itemModel.dart';
import 'package:food_order_app/src/model/restaurantModel.dart';
import 'package:food_order_app/src/screen/home/productDetail.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

class SingleDetailScreen extends StatefulWidget {
  const SingleDetailScreen({super.key});

  @override
  State<SingleDetailScreen> createState() => _SingleDetailScreenState();
}

class _SingleDetailScreenState extends State<SingleDetailScreen>
    with TickerProviderStateMixin {
  final CarouselController controller = CarouselController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    TabController _tabController = TabController(length: 8, vsync: this);
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(sw, sh * 0.5),
        child: Stack(
          children: [
            CarouselSlider(
                items: [
                  Image.asset(
                    AppImages.image1,
                    width: sw,
                    height: sh * 0.5,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    AppImages.image11,
                    width: sw,
                    height: sh * 0.5,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    AppImages.image10,
                    width: sw,
                    height: sh * 0.5,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    AppImages.image4,
                    width: sw,
                    height: sh * 0.5,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    AppImages.image8,
                    width: sw,
                    height: sh * 0.5,
                    fit: BoxFit.cover,
                  )
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  scrollPhysics: const BouncingScrollPhysics(),
                  aspectRatio: 1.8,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                )),
            Positioned(
                top: 40,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: AppColors.white,
                      ),
                    ),
                    const Spacer(),
                    CustomImage(
                      image: AppIcons.share,
                      width: 25,
                      height: 25,
                    ),
                    10.width,
                    Icon(
                      Icons.search,
                      size: 30,
                      color: AppColors.white,
                    ),
                  ],
                )),
            Positioned(
                right: 40,
                bottom: 25,
                child: Row(
                  children: List.generate(
                      5,
                      (index) => Container(
                            decoration: BoxDecoration(
                                color: _currentIndex == index
                                    ? AppColors.white
                                    : AppColors.grey,
                                borderRadius: BorderRadius.circular(15)),
                            margin: const EdgeInsets.only(right: 5),
                            height: 10,
                            width: 15,
                          )),
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: customText(context, items[3].name,
                  size: 30,
                  color: AppColors.black,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: customText(context,
                  "\$\$ ${items[0].type1}   ${items[0].type2}  ${items[0].type3}",
                  color: AppColors.lightgrey, size: 16),
            ),
            10.height,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  customText(context, items[0].rating,
                      color: AppColors.grey, size: 12, fontFamily: "f"),
                  10.width,
                  Icon(
                    Icons.star,
                    size: 20,
                    color: AppColors.activeColor,
                  ),
                  10.width,
                  customText(context, "200+ Ratings",
                      color: AppColors.grey, size: 12, fontFamily: "f"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: AppColors.activeColor,
                        size: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(context, "Free",
                              size: 15,
                              color: AppColors.black,
                              fontFamily: "f"),
                          customText(context, "Delivery",
                              size: 10,
                              color: AppColors.black,
                              fontFamily: "f"),
                        ],
                      )
                    ],
                  ),
                  10.width,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.watch_later,
                        color: AppColors.activeColor,
                        size: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(context, "25",
                              size: 15,
                              color: AppColors.black,
                              fontFamily: "f"),
                          customText(context, "Minutes",
                              size: 10,
                              color: AppColors.black,
                              fontFamily: "f"),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 20, left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.activeColor),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: customText(context, "TAKE AWAY",
                        color: AppColors.activeColor, size: 15),
                  ),
                ],
              ),
            ),
            15.height,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: customText(context, "Featured Items",
                  size: 20, fontFamily: "p", color: AppColors.black),
            ),
            10.height,
            listofItemsOnDetailScreen(sw),
            TabBar(
              labelPadding: const EdgeInsets.only(right: 15, left: 10),
              indicatorPadding: const EdgeInsets.all(0),
              controller: _tabController,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelStyle: TextStyles.style.copyWith(
                  fontWeight: FontWeight.w400, color: AppColors.activeColor),
              labelStyle: TextStyles.style.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                  fontSize: 20),
              indicatorColor: Colors.pink,
              dividerColor: AppColors.white,
              tabs: [
                customText(context, "Pizza", color: AppColors.black, size: 20),
                customText(context, "Sea Food",
                    color: AppColors.black, size: 20),
                customText(context, "Italian",
                    color: AppColors.black, size: 20),
                customText(context, "Appetizers",
                    color: AppColors.black, size: 20),
                customText(context, "Lamb", color: AppColors.black, size: 20),
                customText(context, "Dry Fruit",
                    color: AppColors.black, size: 20),
                customText(context, "Burger", color: AppColors.black, size: 20),
                customText(context, "Sandwich",
                    color: AppColors.black, size: 20),
              ],
            ),
            SizedBox(
              height: 800,
              child: TabBarView(
                // children: List.generate(8, (index) => Text("Hello")),
                children: [
                  customlistview(sh, sw, const DetailScreen()),
                  customlistview(sh, sw, const DetailScreen()),
                  customlistview(sh, sw, const DetailScreen()),
                  customlistview(sh, sw, const DetailScreen()),
                  customlistview(sh, sw, const DetailScreen()),
                  customlistview(sh, sw, const DetailScreen()),
                  customlistview(sh, sw, const DetailScreen()),
                  customlistview(sh, sw, const DetailScreen()),
                ],
                controller: _tabController,
              ),
            )
            // TabBarView(controller: _tabController, children: [
            //   Text("Hello"),
            //   Text("Hello"),
            //   Text("Hello"),
            //   Text("Hello"),
            //   Text("Hello"),
            //   Text("Hello"),
            //   Text("Hello"),
            //   Text("Hello"),

            //   // customlistview(sh, sw, const DetailScreen()),
            //   // customlistview(sh, sw, const DetailScreen()),
            //   // customlistview(sh, sw, const DetailScreen()),
            //   // customlistview(sh, sw, const DetailScreen()),
            //   // customlistview(sh, sw, const DetailScreen()),
            //   // customlistview(sh, sw, const DetailScreen()),
            //   // customlistview(sh, sw, const DetailScreen()),
            //   // customlistview(sh, sw, const DetailScreen()),
            // ]),
          ],
        ),
      ),
    );
  }

  Widget listofItemsOnDetailScreen(sw) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 20),
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 180,
                  width: 180,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    items[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 180,
                  child: Text(
                    items[index].name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyles.styleYu.copyWith(
                        fontSize: 20,
                        color: AppColors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                customText(
                  context,
                  "\$\$ ${items[index].type1}",
                  size: 16,
                  fontFamily: "f",
                  color: AppColors.lightgrey,
                ),
              ],
            );
          }),
    );
  }
}

Widget customlistview(sh, sw, screen, {bool check = false}) {
  return ListView.builder(
      padding: check == false
          ? const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10)
          : const EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 10),
      itemCount: check == false ? 5 : 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: screen == null
              ? () {}
              : () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => screen));
                },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    check == false
                        ? items[index].image
                        : resturants[index].image,
                    width: sw * 0.27,
                    height: sw * 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
                10.width,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(context, items[index].name,
                          textAlign: TextAlign.left,
                          size: 20,
                          color: AppColors.black,
                          fontFamily: "p"),
                      5.height,
                      customText(context,
                          "Shortbread, chocolate turtle cookies, and red velvet.",
                          size: 15,
                          color: AppColors.lightgrey,
                          textAlign: TextAlign.left,
                          fontFamily: "p"),
                      5.height,
                      Row(
                        children: [
                          customText(context, "\$\$ ${items[index].type2}",
                              color: AppColors.lightgrey, size: 14),
                          const Spacer(),
                          customText(context, "AUD\$${items[index].price}",
                              color: AppColors.activeColor, size: 14)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
}
