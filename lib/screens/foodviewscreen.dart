import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/Model/foodmodel.dart';
import 'package:foodapp/widgets/card/Foodpic_card.dart';

class FoodviewScreen extends StatelessWidget {
  const FoodviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List _fastfood = Food.foodlist.where((data) => data.cat == 'fast').toList();
    List _briyani = Food.foodlist.where((data) => data.cat == 'br').toList();
    List _sidedish = Food.foodlist.where((data) => data.cat == 'st').toList();

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Easy ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.black.withOpacity(.8)),
                      ),
                      Text(
                        'Eats ',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: Colors.orange[800]),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.basketShopping,
                            size: 21,
                            color: Colors.black.withOpacity(.7),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.solidBell,
                            size: 21,
                            color: Colors.black.withOpacity(.7),
                          ))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 50),
                        backgroundColor: Colors.orange[600],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text('Search',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 60),
                      backgroundColor: Colors.orange[600],
                    ),
                    child: const Text('Foods',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 60),
                        backgroundColor: Colors.white,
                        elevation: 0.6),
                    child: Text('Hotels',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5,
                            color: Colors.black.withOpacity(.6))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 260,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _fastfood.length,
                    itemBuilder: (ctx, i) {
                      final food = _fastfood[i];

                      return FoodPicCard(
                        foodmodel: food,
                      );
                    })),
            const SizedBox(
              height: 10,
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
                height: 280,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _briyani.length,
                    itemBuilder: (ctx, i) {
                      final food = _briyani[i];

                      return FoodPicCard(
                        foodmodel: food,
                      );
                    })),
            const SizedBox(
              height: 10,
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
                height: 280,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _sidedish.length,
                    itemBuilder: (ctx, i) {
                      final food = _sidedish[i];

                      return FoodPicCard(
                        foodmodel: food,
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
