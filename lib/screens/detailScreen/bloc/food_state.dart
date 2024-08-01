part of 'food_bloc.dart';

@immutable
sealed class FoodState {}

final class FoodInitial extends FoodState {}

class FoodWhishListState extends FoodState {
  final String msg;
  FoodWhishListState({required this.msg});
}
