import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/constants/colorconst.dart';

class Globalcartwidget extends StatefulWidget {
  const Globalcartwidget({super.key, required this.cartItemCount});
  final int cartItemCount;

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.basketShopping,
                        size: 24,
                        color: ColorsConst.primary,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Text(
                          '${widget.cartItemCount} Foods in Cart',
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorsConst.black.withOpacity(.8),
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                const FaIcon(
                  FontAwesomeIcons.deleteLeft,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            )),
      ),
    );
  }
}
