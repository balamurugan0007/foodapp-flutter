import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:foodapp/Model/Hotelmodel.dart';
import 'package:foodapp/Model/foodmodel.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<HotelButtonClickedEvent>(hotelButtonClickedEvent);
    on<FoodButtonClickedEvent>(foodButtonClickedEvent);
    on<HotelScreenSeprateHotelClickedEvent>(
        hotelScreenSeprateHotelClickedEvent);
  }

  FutureOr<void> hotelButtonClickedEvent(
      HotelButtonClickedEvent event, Emitter<HomeState> emit) {
    emit(HomeHoteDataState(data: Hotels.hotalList));
  }

  FutureOr<void> foodButtonClickedEvent(
      FoodButtonClickedEvent event, Emitter<HomeState> emit) {
    emit(HomeFoodDataState());
  }

  FutureOr<void> hotelScreenSeprateHotelClickedEvent(
      HotelScreenSeprateHotelClickedEvent event, Emitter<HomeState> emit) {
    emit(HotelSeprateScreenNavigateState(hotelname: event.name));
  }
}
