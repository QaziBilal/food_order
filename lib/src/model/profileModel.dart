// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';

class ProfileModel {
  String title;
  String subtitle;
  String icon;

  ProfileModel({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

List<ProfileModel> profileInfo = [
  ProfileModel(
      title: "Profile Information",
      subtitle: "Change your account information",
      icon: AppIcons.profile),
  ProfileModel(
      title: "Change Password",
      subtitle: "Change your Password",
      icon: AppIcons.lock),
  ProfileModel(
      title: "Payment Methods",
      subtitle: "Add your credit & debit cards",
      icon: AppIcons.card),
  ProfileModel(
      title: "Location",
      subtitle: "Add or remove your delivery locations",
      icon: AppIcons.locationpin),
  ProfileModel(
      title: "Add Social Account",
      subtitle: "Add Facebook, Twitter etc",
      icon: AppIcons.facebook),
  ProfileModel(
      title: "Refer to Friends",
      subtitle: "Get \$10 for reffering friends",
      icon: AppIcons.share),
];

List<ProfileModel> notiticationsList = [
  ProfileModel(
      title: "Push Notifications",
      subtitle: "For daily update you will get it",
      icon: AppIcons.notification),
  ProfileModel(
      title: "SMS Notifications",
      subtitle: "For daily update you will get it",
      icon: AppIcons.notification),
  ProfileModel(
      title: "Promotional Notifications",
      subtitle: "For daily update you will get it",
      icon: AppIcons.notification),
];

List<ProfileModel> moreList = [
  ProfileModel(
      title: "Rate Us",
      subtitle: "For daily update you will get it",
      icon: AppIcons.star),
  ProfileModel(
      title: "FAQ",
      subtitle: "For daily update you will get it",
      icon: AppIcons.faq),
  ProfileModel(title: "Logout", subtitle: "", icon: AppIcons.logout),
];
