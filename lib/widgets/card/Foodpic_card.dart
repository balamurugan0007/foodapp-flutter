import 'package:flutter/material.dart';
import 'package:foodapp/Model/foodmodel.dart';

class FoodPicCard extends StatelessWidget {
  const FoodPicCard({super.key, required this.foodmodel});
  final Food foodmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        color: Colors.white30.withOpacity(.6),
        border: Border.all(width: 1, color: Colors.black.withOpacity(.2)),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 170,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(.5),
              image: DecorationImage(
                image: NetworkImage(
                  '${foodmodel.foodimg}',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite_outline,
                          size: 28,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange[800],
                      ),
                      child: Center(
                        child: Text(
                          '${foodmodel.price}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${foodmodel.foodname}',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: Colors.black.withOpacity(.75),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  ),
                  Text(
                    '${foodmodel.rate}',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black.withOpacity(.75),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.alarm,
                    color: Colors.red[600],
                  ),
                  Text(
                    '10 min',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black.withOpacity(.75),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
