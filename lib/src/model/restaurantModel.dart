// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_order_app/src/helper/constants.dart';

class RestaurantModel {
  String name;
  String image;
  String address;
  String deliveryTime;
  String rating;
  RestaurantModel({
    required this.name,
    required this.image,
    required this.address,
    required this.deliveryTime,
    required this.rating,
  });
}

List<RestaurantModel> resturants = [
  RestaurantModel(
      name: "MAcdonals",
      image: AppImages.restaurant1,
      address: "Somewhere on the earth",
      deliveryTime: "32 min",
      rating: "4.1"),
  RestaurantModel(
      name: "The Halal Guys",
      image: AppImages.restaurant2,
      address: "Somewhere on the earth",
      deliveryTime: "32 min",
      rating: "4.1"),
  RestaurantModel(
      name: "KFC",
      image: AppImages.restaurant4,
      address: "Somewhere on the earth",
      deliveryTime: "32 min",
      rating: "4.1"),
  RestaurantModel(
      name: "Bakrey",
      image: AppImages.restaurant3,
      address: "Somewhere on the earth",
      deliveryTime: "32 min",
      rating: "4.1"),
  RestaurantModel(
      name: "MAcdonals",
      image: AppImages.restaurant1,
      address: "Somewhere on the earth",
      deliveryTime: "32 min",
      rating: "4.1"),
  RestaurantModel(
      name: "The Halal Guys",
      image: AppImages.restaurant2,
      address: "Somewhere on the earth",
      deliveryTime: "32 min",
      rating: "4.1"),
];
