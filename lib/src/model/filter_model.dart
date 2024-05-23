// ignore_for_file: public_member_api_docs, sort_constructors_first
class FilterModel {
  String item;
  bool check;

  FilterModel({
    required this.item,
    required this.check,
  });
}

List<FilterModel> list1 = [
  FilterModel(item: "ALL", check: false),
  FilterModel(item: "BRUNCH", check: false),
  FilterModel(item: "DINNER", check: false),
  FilterModel(item: "BURGER", check: false),
  FilterModel(item: "CHINEASE", check: false),
  FilterModel(item: "PIZZA", check: false),
];

List<FilterModel> list2 = [
  FilterModel(item: "VEGETERIAN", check: false),
  FilterModel(item: "SHUARMA", check: false),
  FilterModel(item: "DINNER", check: false),
  FilterModel(item: "BURGER", check: false),
  FilterModel(item: "GOODS", check: false),
  FilterModel(item: "PIZZA", check: false),
];
