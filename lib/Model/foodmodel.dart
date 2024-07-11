class Food {
  Food({
    required this.desc,
    required this.foodimg,
    required this.foodname,
    required this.price,
    required this.rate,
    required this.cat,
    required this.hotalname,
  });

  final String foodname;
  final String foodimg;
  final String desc;
  final int price;
  final String rate;
  final String cat;
  final String hotalname;

  static List<Food> foodlist = [
    Food(
        desc: "Delicious Pizza you want to try it",
        foodimg:
            'https://i.pinimg.com/736x/78/75/13/787513f528db6279289e087f9d951e2f.jpg',
        foodname: 'Pizza',
        price: 390,
        rate: '4.5',
        cat: 'fast',
        hotalname: 'Suvai'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/26/ea/ae/26eaae30d3b98854e533b0d27712c9a6.jpg',
        foodname: 'Burger',
        price: 220,
        rate: '4.2',
        cat: 'fast',
        hotalname: 'Kannappa'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/50/48/a0/5048a0f29a77271a19f623ac67488f34.jpg',
        foodname: 'Shawarma',
        price: 199,
        rate: '4.6',
        cat: 'fast',
        hotalname: 'Kannappa'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/bf/ca/42/bfca4217f166728ecb7a3b27af122d56.jpg',
        foodname: 'SandWitch',
        price: 149,
        rate: '4.1',
        cat: 'fast',
        hotalname: 'Kannappa'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/86/19/6a/86196a719c94e17763f55fe697f7e7dd.jpg',
        foodname: 'Hot Dog',
        price: 260,
        rate: '3.9',
        cat: 'fast',
        hotalname: 'Banana Leaf'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/c5/d2/62/c5d262f3377da91a7229772026a2ec5c.jpg',
        foodname: 'Mutton Briyani',
        price: 320,
        rate: '4.7',
        cat: 'br',
        hotalname: 'Kannappa'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/9f/ff/4f/9fff4f0568cb66b2e2df0dab5043e16d.jpg',
        foodname: 'Chicken Briyani',
        price: 259,
        rate: '4.8',
        cat: 'br',
        hotalname: 'Banana Leaf'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/63/fe/39/63fe3979c5fa2b9cbe2fffb3784e70cd.jpg',
        foodname: 'Egg Briyani',
        price: 190,
        rate: '4.1',
        cat: 'br',
        hotalname: 'Suvai'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/56/86/a8/5686a866f1263a1122bf5b660e1fe0d0.jpg',
        foodname: 'Fish Briyani',
        price: 290,
        rate: '4.0',
        cat: 'br',
        hotalname: 'Banana Leaf'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/42/e6/70/42e67005a135aa08910f5af898ef9ce0.jpg',
        foodname: 'Grilled Chicken',
        price: 320,
        rate: '4.9',
        cat: 'st',
        hotalname: 'Suvai'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/de/d4/e0/ded4e0030e04f03e2094faacfa10fd50.jpg',
        foodname: 'Chicken 65',
        price: 260,
        rate: '4.3',
        cat: 'st',
        hotalname: 'Suvai'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/65/d3/58/65d35846da6758053b3b33b914714f5c.jpg',
        foodname: 'Mutton Chukaa',
        price: 210,
        rate: '4.4',
        cat: 'st',
        hotalname: 'Suvai'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/07/2f/7b/072f7b80a4bf0e8e62b0fba719037101.jpg',
        foodname: 'Fish Fry',
        price: 169,
        rate: '4.6',
        cat: 'st',
        hotalname: 'Suvai'),
    Food(
        desc: '',
        foodimg:
            'https://i.pinimg.com/564x/a7/ec/7a/a7ec7af97c951316c8a2fba4c893e098.jpg',
        foodname: 'Prawan Fry',
        price: 179,
        rate: '4.1',
        cat: 'st',
        hotalname: 'Suvai')
  ];
}
