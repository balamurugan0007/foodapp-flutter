import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/Model/Hotelmodel.dart';
import 'package:foodapp/screens/home/bloc/home_bloc.dart';
import 'package:foodapp/widgets/card/hotelpic_card.dart';

class hotel_wideget extends StatelessWidget {
  const hotel_wideget({super.key});

  @override
  Widget build(BuildContext context) {
    List hotel = Hotels.hotalList;
    final HomeBloc homeBloc = HomeBloc();

    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: hotel.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  homeBloc.add(
                      HotelScreenSeprateHotelClickedEvent(hotel: hotel[index]));
                },
                child: Hotelpic_card(hotels: hotel[index]),
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
