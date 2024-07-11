import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/widgets/home/food_widget.dart';
import 'package:foodapp/widgets/home/hotel_widget.dart';

class FoodviewScreen extends StatefulWidget {
  const FoodviewScreen({super.key});

  @override
  State<FoodviewScreen> createState() => _FoodviewScreenState();
}

class _FoodviewScreenState extends State<FoodviewScreen> {
  int _screen = 0;

  List mainscreens = [
    const foodview_widget(),
    const hotel_wideget(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _screen = 0;
  }

  @override
  Widget build(BuildContext context) {
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
                    onPressed: () {
                      if (_screen != 0) {
                        setState(() {
                          _screen = 0;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 60),
                      backgroundColor:
                          _screen == 0 ? Colors.orange[600] : Colors.white,
                    ),
                    child: Text('Foods',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: _screen == 0
                                ? Colors.white
                                : Colors.black.withOpacity(.6))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_screen != 1) {
                        setState(() {
                          _screen = 1;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 60),
                        backgroundColor:
                            _screen == 1 ? Colors.orange[600] : Colors.white,
                        elevation: 0.6),
                    child: Text('Hotels',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5,
                            color: _screen == 1
                                ? Colors.white
                                : Colors.black.withOpacity(.6))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: mainscreens[_screen],
            )
          ],
        ),
      ),
    );
  }
}
