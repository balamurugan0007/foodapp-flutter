import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/Model/cartmodel.dart';
import 'package:foodapp/Model/foodmodel.dart';
import 'package:foodapp/constants/colorconst.dart';
import 'package:foodapp/core/db/cart.dart';
import 'package:foodapp/core/db/savefood.dart';
import 'package:foodapp/screens/detailScreen/bloc/food_bloc.dart';

import 'package:foodapp/widgets/card/Foodpic_card.dart';
import 'package:foodapp/widgets/cart/GlobalcartWidget.dart';

class SeperatefoodScreen extends StatefulWidget {
  const SeperatefoodScreen(
      {super.key, required this.food, required this.foodcat});

  final Food food;
  final String foodcat;

  @override
  _SeperatefoodScreenState createState() => _SeperatefoodScreenState();
}

class _SeperatefoodScreenState extends State<SeperatefoodScreen> {
  late List related_food;
  final FoodBloc foodBloc = FoodBloc();
  bool save = false;
  bool cart = false;
  @override
  void initState() {
    super.initState();
    related_food =
        Food.foodlist.where((data) => data.cat == widget.foodcat).toList();
    save = SaveProduct.isProductInWhislist(widget.food);
    cart = CartItems.CartItemCheck();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<FoodBloc, FoodState>(
        bloc: foodBloc,
        listener: (context, state) {
          if (state is FoodWhishListState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: AwesomeSnackbarContent(
                title: 'Whishlist',

                message: state.msg,

                /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                contentType: ContentType.success,
                titleFontSize: 16,
                messageFontSize: 12,
              ),
              backgroundColor: Colors.transparent.withOpacity(.0),
              action: SnackBarAction(label: 'View', onPressed: () {}),
            ));

            setState(() {
              save = SaveProduct.isProductInWhislist(widget.food);
            });
          } else if (state is FoodIncartItemsCheckState) {
            setState(() {
              cart = state.iscartItem;
            });
          }
        },
        builder: (context, state) {
          return Container(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: double.maxFinite,
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
                                        image: NetworkImage(
                                            '${widget.food.foodimg}'),
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
                            _CardContainer,
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                          height: 220,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: related_food.length,
                              itemBuilder: (ctx, i) {
                                final food = related_food[i];

                                return FoodPicCard(
                                  foodmodel: food,
                                );
                              })),
                    ],
                  ),
                ),
                cart ? Globalcartwidget() : Text('.')
              ],
            ),
          );
        },
      ),
    );
  }

  Widget get _CardContainer {
    return Positioned(
      top: 200,
      left: 0,
      right: 0,
      child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 310,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border:
                    Border.all(width: 2, color: Colors.black.withOpacity(.1))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${widget.food.foodname}',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.8))),
                          Text('${widget.food.hotalname}',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.8))),
                        ],
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              // orderbloc.add()
                              foodBloc.add(
                                  WishlistAddorRemoveEvent(data: widget.food));
                              setState(() {
                                save = SaveProduct.isProductInWhislist(
                                    widget.food);
                              });
                            },
                            child: CircleAvatar(
                              child: save
                                  ? Icon(Icons.favorite,
                                      size: 28, color: Colors.red)
                                  : FaIcon(
                                      FontAwesomeIcons.heart,
                                      size: 18,
                                      color: Colors.black.withOpacity(.7),
                                    ),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(
                          '${widget.food.rate}',
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
                  height: 30,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _ButtonsWidget,
                )
              ],
            ),
          )),
    );
  }

  Widget get _ButtonsWidget {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OutlinedButton.icon(
          onPressed: () {
            CartModel val = new CartModel(data: widget.food, Qty: 1);
            foodBloc.add(CartitemsAddEvent(cart: val));

            foodBloc.add(CartItemCheckEvent());
          },
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.orange[800],
          ),
          label: Text(
            'Cart',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.orange[800],
            ),
          ),
          style: OutlinedButton.styleFrom(
            fixedSize: const Size(130, 50),
            side: BorderSide(color: Colors.orange[800]!),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ),
          label: const Text(
            'Buy',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: .5,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(130, 50),
            backgroundColor: Colors.orange[600],
            elevation: 0.6,
          ),
        ),
      ],
    );
  }
}
