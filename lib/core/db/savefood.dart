import 'package:foodapp/Model/foodmodel.dart';

class SaveProduct {
  static List<Food> saveList = [];

  // Method to toggle product in the cart
  static Future<Map> toggleProductInwish(Food data) async {
    // Check if the product is already in the cart
    final exists = saveList.any((item) =>
        item.hotalname == data.hotalname && item.foodname == item.foodname);

    if (exists) {
      // If it exists, remove it from the cart
      saveList.removeWhere((item) =>
          item.hotalname == data.hotalname && item.foodname == item.foodname);
      return {
        "data": "${data.foodname} has removed from Whishlist",
        "result": false
      };
    } else {
      // If it does not exist, add it to the cart
      saveList.add(data);
      return {
        "data": "${data.foodname} has removed from Whishlist",
        "result": true
      };
    }
  }

  // Method to check if a product is in the cart
  static bool isProductInWhislist(Food data) {
    return saveList.any((item) =>
        item.hotalname == data.hotalname && item.foodname == item.foodname);
  }
}
