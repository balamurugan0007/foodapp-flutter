import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/constants/colorconst.dart';

class Globalcartwidget extends StatefulWidget {
  const Globalcartwidget({super.key});

  @override
  State<Globalcartwidget> createState() => _GlobalcartwidgetState();
}

class _GlobalcartwidgetState extends State<Globalcartwidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: InkWell(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorsConst.primary,
            ),
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 70.0,
            child: const Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.basketShopping,
                  size: 24,
                  color: Colors.white,
                ),
              ],
            )),
      ),
    );
  }
}
