// ignore_for_file: empty_constructor_bodies

part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class HomeFoodDataState extends HomeState {}

class HomeHoteDataState extends HomeState {
  final List<Hotels> hotel;
  HomeHoteDataState({required this.hotel});
}

class HotelSeprateScreenNavigateState extends HomeState {
  final Hotels hotels;

  HotelSeprateScreenNavigateState({required this.hotels});
}
