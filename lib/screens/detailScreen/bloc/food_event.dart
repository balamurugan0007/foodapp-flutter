part of 'food_bloc.dart';

@immutable
sealed class FoodEvent {}

class WishlistAddorRemoveEvent extends FoodEvent {
  final Food data;
  WishlistAddorRemoveEvent({required this.data});
}

class CartitemsAddEvent extends FoodEvent {}

class FoodBuyEvent extends FoodEvent {}

class FoodRelatedItems extends FoodEvent {
  final String cat;
  FoodRelatedItems({required this.cat});
}
