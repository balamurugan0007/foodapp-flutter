import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.orange[800]),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 420,
                child: const Image(
                  image: AssetImage('assets/images/food.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const Center(
                  child: Text(
                'Easy Eats',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              )),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                " EasyEats makes dining easy, so you can focus on eating well. Eat smart, pay easy with EasyEats!",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                ),
                child: Text(
                  'Order now ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange[800]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
