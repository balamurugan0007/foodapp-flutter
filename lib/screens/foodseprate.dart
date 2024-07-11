import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/Model/foodmodel.dart';

class SeperatefoodScreen extends StatelessWidget {
  const SeperatefoodScreen({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 530,
              child: Stack(
                children: [
                  Container(
                      height: 380,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          image: DecorationImage(
                              image: NetworkImage('${food.foodimg}'),
                              fit: BoxFit.cover)),
                      child: Padding(
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
                      )),
                  Positioned(
                    top: 200,
                    left: 0,
                    right: 0,
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 310,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(
                                  width: 2,
                                  color: Colors.black.withOpacity(.1))),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: CircleAvatar(
                                  child: FaIcon(
                                    FontAwesomeIcons.shareNodes,
                                    size: 21,
                                    color: Colors.black.withOpacity(.7),
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image(
                                    image: NetworkImage('${food.foodimg}')),
                              )),
                              Center(
                                child: Text('${food.foodname}',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(.8))),
                              ),
                              Center(
                                child: Text('${food.hotalname}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(.8))),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[800],
                                      ),
                                      Text(
                                        '${food.rate}',
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
                                        '30 min',
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
                                        Icons.delivery_dining,
                                        color: Colors.green[800],
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
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(130, 60),
                                    ),
                                    child: Text('Cart',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.orange[800])),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(130, 60),
                                        backgroundColor: Colors.orange[600],
                                        elevation: 0.6),
                                    child: const Text('Buy',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: .5,
                                            color: Colors.white)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
