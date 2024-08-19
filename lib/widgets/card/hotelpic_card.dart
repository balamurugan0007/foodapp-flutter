import 'package:flutter/material.dart';
import 'package:foodapp/Model/Hotelmodel.dart';

import 'package:foodapp/screens/home/bloc/home_bloc.dart';

class Hotelpic_card extends StatelessWidget {
  const Hotelpic_card({super.key, required this.hotels});

  final Hotels hotels;

  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = HomeBloc();
    return InkWell(
      onTap: () {
        homeBloc
            .add(HotelScreenSeprateHotelClickedEvent(name: hotels.hotalname));
      },
      child: Container(
        width: double.infinity,
        height: 280,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.black.withOpacity(.1))),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '${hotels.hotalname ?? ''}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black.withOpacity(.75),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.all(4),
                    height: 200,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: NetworkImage('${hotels.hotalimg ?? ''}'),
                        fit: BoxFit.cover,
                      ),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(5),
                        height: 100,
                        width: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: NetworkImage('${hotels.hotalimg1 ?? ''}'),
                            fit: BoxFit.cover,
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 100,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.8),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            '${hotels.hotalimg2 ?? ''}',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '12+ Dishes',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 21),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
