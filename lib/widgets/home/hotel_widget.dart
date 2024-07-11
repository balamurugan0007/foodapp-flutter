import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/Model/Hotelmodel.dart';
import 'package:foodapp/widgets/card/hotelpic_card.dart';

class hotel_wideget extends StatelessWidget {
  const hotel_wideget({super.key});

  @override
  Widget build(BuildContext context) {
    List hotel = Hotels.hotalList;
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Hotelpic_card(hotels: hotel[0]),
          const SizedBox(
            height: 20,
          ),
          Hotelpic_card(hotels: hotel[1]),
          const SizedBox(
            height: 20,
          ),
          Hotelpic_card(hotels: hotel[2]),
          const SizedBox(
            height: 20,
          ),
          Hotelpic_card(hotels: hotel[3]),
          const SizedBox(
            height: 20,
          ),
          Hotelpic_card(hotels: hotel[4]),
        ],
      ),
    );
  }
}
