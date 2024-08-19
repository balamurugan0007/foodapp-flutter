import 'package:flutter/material.dart';
import 'package:foodapp/Model/Hotelmodel.dart';
import 'package:foodapp/screens/home/bloc/home_bloc.dart';
import 'package:foodapp/widgets/card/hotelpic_card.dart';

class HotelWidget extends StatelessWidget {
  const HotelWidget({super.key, required this.hotelData});

  final List<Hotels> hotelData;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Hotelpic_card(hotels: hotelData[0]),
            Hotelpic_card(hotels: hotelData[1]),
            Hotelpic_card(hotels: hotelData[2]),
            Hotelpic_card(hotels: hotelData[3]),
            Hotelpic_card(hotels: hotelData[4]),
          ],
        ));
  }
}
