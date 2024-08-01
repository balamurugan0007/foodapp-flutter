import 'package:flutter/material.dart';
import 'package:foodapp/Model/foodmodel.dart';
import 'package:foodapp/constants/colorconst.dart';
import 'package:foodapp/constants/styleconst.dart';
import 'package:foodapp/core/db/savefood.dart';
import 'package:foodapp/widgets/card/Foodpic_card.dart';

class Favscreen extends StatefulWidget {
  const Favscreen({super.key});

  @override
  State<Favscreen> createState() => _FavscreenState();
}

class _FavscreenState extends State<Favscreen> {
  List<Food> data = [];

  @override
  void initState() {
    super.initState();
    data = SaveProduct.saveList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Builder(builder: (context) {
          if (data.isEmpty) {
            return Center(
              child: NodataContainer(),
            );
          } else {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: .90),
                itemCount: data.length,
                itemBuilder: (ctx, i) {
                  return FoodPicCard(foodmodel: data[i]);
                });
          }
        }),
      ),
    );
  }

  Widget NodataContainer() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_basket,
              size: 80,
              color: ColorsConst.black.withOpacity(.8),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'No items in your Wishlist',
              style: AppStyles.headline
                  .copyWith(color: ColorsConst.black.withOpacity(.7)),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/main');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsConst.primary,
                ),
                child: Text(
                  'Go add some Food',
                  style: AppStyles.subtitle
                      .copyWith(color: Colors.white, fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}
