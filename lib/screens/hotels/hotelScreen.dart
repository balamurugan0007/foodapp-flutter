import 'package:flutter/material.dart';
import 'package:foodapp/Model/Hotelmodel.dart';

class Hotelscreen extends StatefulWidget {
  const Hotelscreen({super.key, required this.data});
  final Hotels data;

  @override
  State<Hotelscreen> createState() => _HotelscreenState();
}

class _HotelscreenState extends State<Hotelscreen> {
  @override
  Widget build(BuildContext context) {
    return const Text('data');
  }
}
