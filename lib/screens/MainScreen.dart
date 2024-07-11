import 'package:flutter/material.dart';

import 'package:foodapp/screens/ProfileScreen.dart';
import 'package:foodapp/screens/foodviewscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = 0;
  }

  void _ontapItem(index) {
    print('hell');
    setState(() {
      print('changing the index $index');
      _selectedIndex = index;
    });
  }

  List<Widget> screens = [
    FoodviewScreen(),
    Text('hello'),
    Text('hello'),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange[800],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black.withOpacity(.65),
        selectedLabelStyle:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        onTap: _ontapItem,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 26,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_checkout,
                size: 26,
              ),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                size: 26,
              ),
              label: 'favourite'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 26,
              ),
              label: 'Account'),
        ],
      ),
      body: Container(
        child: screens[_selectedIndex],
      ),
    );
  }
}
