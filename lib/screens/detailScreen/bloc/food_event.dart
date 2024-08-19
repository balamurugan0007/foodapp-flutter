part of 'food_bloc.dart';

@immutable
sealed class FoodEvent {}

class WishlistAddorRemoveEvent extends FoodEvent {
  final Food data;
  WishlistAddorRemoveEvent({required this.data});
}

class CartitemsAddEvent extends FoodEvent {
  final CartModel cart;
  CartitemsAddEvent({required this.cart});
}

class CartItemsRemoveEvent extends FoodEvent {
  final CartModel cartdata;
  CartItemsRemoveEvent({required this.cartdata});
}

class CartItemCheckEvent extends FoodEvent {}

class FoodBuyEvent extends FoodEvent {}

class FoodRelatedItems extends FoodEvent {
  final String cat;
  FoodRelatedItems({required this.cat});
}

class SeprateFoodInCart extends FoodEvent {
  final CartModel data;

  SeprateFoodInCart({required this.data});
}
