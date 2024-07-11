import 'package:flutter/material.dart';
import 'package:foodapp/Model/foodmodel.dart';
import 'package:foodapp/widgets/card/Foodpic_card.dart';

class foodview_widget extends StatelessWidget {
  const foodview_widget({super.key});

  @override
  Widget build(BuildContext context) {
    List fastfood = Food.foodlist.where((data) => data.cat == 'fast').toList();
    List briyani = Food.foodlist.where((data) => data.cat == 'br').toList();
    List sidedish = Food.foodlist.where((data) => data.cat == 'st').toList();

    return Container(
      child: Column(
        children: [
          SizedBox(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fastfood.length,
                  itemBuilder: (ctx, i) {
                    final food = fastfood[i];

                    return FoodPicCard(
                      foodmodel: food,
                    );
                  })),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Briyani lovers ',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black.withOpacity(.75),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: briyani.length,
                  itemBuilder: (ctx, i) {
                    final food = briyani[i];

                    return FoodPicCard(
                      foodmodel: food,
                    );
                  })),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Secondary Dishes',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black.withOpacity(.75),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 220,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sidedish.length,
                  itemBuilder: (ctx, i) {
                    final food = sidedish[i];

                    return FoodPicCard(
                      foodmodel: food,
                    );
                  })),
        ],
      ),
    );
  }
}
