part of 'food_bloc.dart';

@immutable
sealed class FoodState {}

final class FoodInitial extends FoodState {}

class FoodWhishListState extends FoodState {
  final String msg;
  final bool result;
  FoodWhishListState({required this.msg, required this.result});
}

class FoodAddedCartItemsState extends FoodState {
  final String msg;

  FoodAddedCartItemsState({required this.msg});
}

class FoodIncartItemsCheckState extends FoodState {
  final bool iscartItem;
  final int count;
  FoodIncartItemsCheckState({required this.iscartItem, required this.count});
}

class FoodSeprateInCartState extends FoodState {
  final bool iscartItem;

  FoodSeprateInCartState({required this.iscartItem});
}
