// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_order_app/src/helper/constants.dart';

class ItemModel {
  String image;
  String name;
  String resturant;
  String rating;
  String deliveryTime;
  String price;
  String type1;
  String type2;
  String type3;

  ItemModel({
    required this.image,
    required this.name,
    required this.resturant,
    required this.rating,
    required this.deliveryTime,
    required this.price,
    required this.type1,
    required this.type2,
    required this.type3,
  });
}

List<ItemModel> items = [
  ItemModel(
    image: AppImages.image1,
    name: "Spicy Szechuan Noodles",
    resturant: "Wok Master",
    rating: "4.2",
    deliveryTime: "35 mins",
    price: "\$10",
    type1: "Chinese",
    type2: "Spicy",
    type3: "Vegetarian",
  ),
  ItemModel(
    image: AppImages.image2,
    name: "Margherita Pizza",
    resturant: "Pizza Paradise",
    rating: "4.7",
    deliveryTime: "40 mins",
    price: "\$11",
    type1: "Italian",
    type2: "Vegetarian",
    type3: "Classic",
  ),
  ItemModel(
    image: AppImages.image3,
    name: "BBQ Chicken Burger",
    resturant: "Burger Haven",
    rating: "4.5",
    deliveryTime: "30 mins",
    price: "\$9",
    type1: "Fast Food",
    type2: "American",
    type3: "Non-Vegetarian",
  ),
  ItemModel(
    image: AppImages.image4,
    name: "Miso Ramen",
    resturant: "Ramen Delight",
    rating: "4.4",
    deliveryTime: "25 mins",
    price: "\$12",
    type1: "Japanese",
    type2: "Noodles",
    type3: "Vegetarian",
  ),
  ItemModel(
    image: AppImages.image11,
    name: "Mediterranean Salad",
    resturant: "Fresh Greens",
    rating: "4.6",
    deliveryTime: "20 mins",
    price: "\$8",
    type1: "Healthy",
    type2: "Salad",
    type3: "Vegetarian",
  ),
  ItemModel(
    image: AppImages.image6,
    name: "Cheese and Tomato Sandwich",
    resturant: "Sandwich Delight",
    rating: "4.3",
    deliveryTime: "15 mins",
    price: "\$7",
    type1: "Fast Food",
    type2: "Vegetarian",
    type3: "Classic",
  ),
  ItemModel(
    image: AppImages.image7,
    name: "Veggie Delight Pasta",
    resturant: "Pasta Paradise",
    rating: "4.8",
    deliveryTime: "35 mins",
    price: "\$11",
    type1: "Italian",
    type2: "Pasta",
    type3: "Vegetarian",
  ),
  ItemModel(
    image: AppImages.image8,
    name: "Sushi Platter",
    resturant: "Sushi Supreme",
    rating: "4.9",
    deliveryTime: "45 mins",
    price: "\$15",
    type1: "Japanese",
    type2: "Sushi",
    type3: "Seafood",
  ),
  ItemModel(
    image: AppImages.image9,
    name: "Paneer Tikka Masala",
    resturant: "Indian Delight",
    rating: "4.6",
    deliveryTime: "30 mins",
    price: "\$10",
    type1: "Indian",
    type2: "Curry",
    type3: "Vegetarian",
  ),
  ItemModel(
    image: AppImages.image10,
    name: "Chocolate Fudge Sundae",
    resturant: "Sweet Treats",
    rating: "4.7",
    deliveryTime: "20 mins",
    price: "\$6",
    type1: "Dessert",
    type2: "Ice Cream",
    type3: "Chocolate",
  ),
];
