import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/helper/sizedbox_extension.dart';
import 'package:food_order_app/src/model/profileModel.dart';
import 'package:food_order_app/src/screen/auth/enter_address.dart';
import 'package:food_order_app/src/screen/profile/add_card.dart';
import 'package:food_order_app/src/screen/profile/change_password.dart';
import 'package:food_order_app/src/screen/profile/change_profiler.dart';
import 'package:food_order_app/src/screen/profile/refer_friend.dart';
import 'package:food_order_app/src/widgets/custom_image.dart';
import 'package:food_order_app/src/widgets/custom_text.dart';

import 'add_social_accounts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;

  var textValue = 'Switch is OFF';
  List<bool> switchStates =
      List.generate(notiticationsList.length, (index) => false);

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(sw, 100),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(context, "Account Settings",
                    size: 24, color: AppColors.black),
                Text(
                  "Update your settings like notifications, payments, profile edit etc.",
                  style: TextStyles.style.copyWith(
                    fontSize: 15,
                    color: AppColors.lightgrey,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 0),
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: profileInfo.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                              onTap: () {
                                if (index == 0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ChangeProfile()));
                                } else if (index == 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ChangePassword()));
                                } else if (index == 2) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddCard()));
                                } else if (index == 3) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EnterAddressScreen()));
                                } else if (index == 4) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddSocialMediaAccount()));
                                } else if (index == 5) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ReferFriend()));
                                }
                              },
                              titleAlignment: ListTileTitleAlignment.center,
                              leading: CustomImage(
                                image: profileInfo[index].icon,
                                width: 25,
                                height: 25,
                                fit: BoxFit.contain,
                              ),
                              title: customText(
                                  context, profileInfo[index].title,
                                  textAlign: TextAlign.left,
                                  size: 15,
                                  color: AppColors.black),
                              subtitle: customText(
                                  context, profileInfo[index].subtitle,
                                  textAlign: TextAlign.left,
                                  size: 12,
                                  color: AppColors.lightgrey),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.black,
                                size: 15,
                              )),
                          const Divider()
                        ],
                      );
                    }),
                20.height,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: customText(context, "NOTIFICATIONS",
                      size: 20, color: AppColors.black),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: notiticationsList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            leading: CustomImage(
                              image: notiticationsList[index].icon,
                              width: 25,
                              height: 25,
                              fit: BoxFit.contain,
                            ),
                            title: customText(
                                context, notiticationsList[index].title,
                                textAlign: TextAlign.left,
                                size: 15,
                                color: AppColors.black),
                            subtitle: customText(
                                context, moreList[index].subtitle,
                                textAlign: TextAlign.left,
                                size: 12,
                                color: AppColors.lightgrey),
                            trailing: Switch(
                              onChanged: (value) {
                                setState(() {
                                  switchStates[index] = value;
                                });
                                toggleSwitch(value);
                              },
                              value: switchStates[index],
                              activeColor: AppColors.activeColor,
                              inactiveThumbColor: AppColors.lightgrey,
                            ),
                          ),
                          const Divider()
                        ],
                      );
                    }),
                20.height,
                customText(context, "MORE"),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: moreList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                              titleAlignment: ListTileTitleAlignment.center,
                              leading: CustomImage(
                                image: moreList[index].icon,
                                width: 25,
                                height: 25,
                                fit: BoxFit.contain,
                              ),
                              title: customText(context, moreList[index].title,
                                  textAlign: TextAlign.left,
                                  size: 15,
                                  color: AppColors.black),
                              subtitle: customText(
                                  context, moreList[index].subtitle,
                                  textAlign: TextAlign.left,
                                  size: 12,
                                  color: AppColors.lightgrey),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.black,
                                size: 15,
                              )),
                          const Divider()
                        ],
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
