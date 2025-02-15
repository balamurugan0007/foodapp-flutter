import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Ensure you have this import for BlocConsumer
import 'package:foodapp/components/home/search.dart';
import 'package:foodapp/screens/home/bloc/home_bloc.dart';
import 'package:foodapp/screens/hotels/hotelScreen.dart';
import 'package:foodapp/widgets/home/food_widget.dart';
import 'package:foodapp/widgets/home/hotel_widget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final HomeBloc homeBloc = HomeBloc();
  int _screen = 0; // Move _screen here to maintain state

  @override
  void dispose() {
    homeBloc.close(); // Close the bloc when the screen is disposed
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeBloc.add(FoodButtonClickedEvent());
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
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Implement basket action
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.basketShopping,
                          size: 21,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Implement notification action
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.solidBell,
                          size: 21,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            //search
            const Searchcomponet(),

            const SizedBox(height: 30),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeBloc.add(FoodButtonClickedEvent());
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 60),
                      backgroundColor:
                          _screen == 0 ? Colors.orange[600] : Colors.white,
                    ),
                    child: Text(
                      'Foods',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: _screen == 0
                            ? Colors.white
                            : Colors.black.withOpacity(.6),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeBloc.add(HotelButtonClickedEvent());
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 60),
                      backgroundColor:
                          _screen == 1 ? Colors.orange[600] : Colors.white,
                      elevation: 0.6,
                    ),
                    child: Text(
                      'Hotels',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: .5,
                        color: _screen == 1
                            ? Colors.white
                            : Colors.black.withOpacity(.6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Uncomment and implement the main screens based on _screen
            SizedBox(
                child: BlocConsumer<HomeBloc, HomeState>(
              bloc: homeBloc,
              listener: (context, state) {
                if (state is HomeFoodDataState) {
                  setState(() {
                    _screen = 0;
                  });
                } else if (state is HomeHoteDataState) {
                  setState(() {
                    _screen = 1;
                  });
                } else if (state is HotelSeprateScreenNavigateState) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Hotelscreen(data: state.hotelname)));
                }
              },
              builder: (context, state) {
                if (state is HomeFoodDataState) {
                  return const foodview_widget();
                } else if (state is HomeHoteDataState) {
                  return HotelWidget(hotelData: state.data);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )),
          ],
        ),
      ),
    );
  }
}
