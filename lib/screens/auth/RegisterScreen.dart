import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();
  var regualarfont = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 28,
                  color: Colors.black87,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/main');
                },
                child: const Row(
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black26),
                    ),
                    Icon(
                      Icons.arrow_right_rounded,
                      size: 28,
                      color: Colors.black26,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Sign Up',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(.1),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your username';
                            }
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle,
                                size: 24,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              hintText: 'User name',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(.1),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your email';
                            }
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail,
                                size: 24,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              hintText: ' Email Address',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(.1),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your Password';
                            }
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 24,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
              child: ElevatedButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                Navigator.of(context).pushNamed('/login');
              }
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(330, 50),
              backgroundColor: Colors.orange[800],
            ),
            child: const Text(
              'Create Account',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an Account',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/login');
                },
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 130,
                    height: 130,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pizza.png'),
                            fit: BoxFit.contain))),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Sign Up With',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 57, 183, 228),
                          child: InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 14, 26, 96),
                          child: InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 230, 5, 69),
                          child: InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
