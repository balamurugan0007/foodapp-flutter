import 'package:foodapp/Model/cartmodel.dart';
import 'package:foodapp/Model/foodmodel.dart';

class CartItems {
  static List<CartModel> saveList = [];

  // Method to add a new product to the wishlist
  static Future<String> addProductCartList(CartModel data) async {
    saveList.add(data);
    return "${data.data.foodname} has been added to your Wishlist";
  }

  // Method to remove a product from the wishlist
  static Future<String> removeProductFromCartList(CartModel data) async {
    final index = saveList.indexWhere((item) =>
        item.data.hotalname == data.data.hotalname &&
        item.data.foodname == data.data.foodname);

    if (index != -1) {
      saveList.removeAt(index);
      return "${data.data.foodname} has been removed from your cart";
    } else {
      return "${data.data.foodname} is not in your cart";
    }
  }

  static bool CartItemCheck() {
    if (saveList.length == 0) {
      return false;
    } else {
      return true;
    }
  }
}
