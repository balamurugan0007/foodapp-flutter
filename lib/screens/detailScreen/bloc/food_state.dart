part of 'food_bloc.dart';

@immutable
sealed class FoodState {}

final class FoodInitial extends FoodState {}

class FoodWhishListState extends FoodState {
  final String msg;
  FoodWhishListState({required this.msg});
}

class FoodAddedCartItemsState extends FoodState {
  final String msg;

  FoodAddedCartItemsState({required this.msg});
}

class FoodIncartItemsCheckState extends FoodState {
  final bool iscartItem;
  FoodIncartItemsCheckState({required this.iscartItem});
}
