import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/constants/colorconst.dart';

class DetailScreenGridFoodsTile extends StatelessWidget {
  const DetailScreenGridFoodsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Related Foods',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: ColorsConst.black),
          )
        ],
      ),
    );
  }
}
