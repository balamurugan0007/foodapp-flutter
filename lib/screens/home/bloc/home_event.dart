part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class InitialLodingEvent extends HomeEvent {}

class HotelButtonClickedEvent extends HomeEvent {}

class FoodButtonClickedEvent extends HomeEvent {}

class HotelScreenSeprateHotelClickedEvent extends HomeEvent {
  final String name;
  HotelScreenSeprateHotelClickedEvent({required this.name});
}
