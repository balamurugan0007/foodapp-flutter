part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class InitialLodingEvent extends HomeEvent {}

class HotelButtonClickedEvent extends HomeEvent {}

class FoodButtonClickedEvent extends HomeEvent {}

class HotelScreenSeprateHotelClickedEvent extends HomeEvent {
  final Hotels hotel;
  HotelScreenSeprateHotelClickedEvent({required this.hotel});
}
