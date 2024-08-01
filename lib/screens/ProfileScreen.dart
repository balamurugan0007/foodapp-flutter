import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/Model/foodmodel.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List cartdata = Food.addcart;
    print(cartdata);
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CircleAvatar(
                  child: Center(
                child: Icon(
                  Icons.arrow_back,
                  size: 24,
                ),
              )),
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Image(
                  height: 150,
                  width: 150,
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/f4/b5/7b/f4b57bc2e2aed583c342d1b74beb6a93.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text('Murugan',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(.8))),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(130, 60),
              ),
              child: Text('Account',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange[800])),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(130, 60),
              ),
              child: Text('Order List',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange[800])),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(130, 60),
              ),
              child: Text('Wishlist',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange[800])),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(130, 60),
              ),
              child: Text('Offers',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange[800])),
            ),
          ],
        ),
      ],
    ));
  }
}
