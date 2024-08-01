import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:foodapp/Model/foodmodel.dart';
import 'package:foodapp/core/db/savefood.dart';
import 'package:meta/meta.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(FoodInitial()) {
    on<FoodEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<WishlistAddorRemoveEvent>(wishlistAddorRemoveEvent);
  }

  FutureOr<void> wishlistAddorRemoveEvent(
      WishlistAddorRemoveEvent event, Emitter<FoodState> emit) async {
    String Item = await SaveProduct.toggleProductInwish(event.data);
    emit(FoodWhishListState(msg: Item));
  }
}
