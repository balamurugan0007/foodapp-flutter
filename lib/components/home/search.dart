import 'package:flutter/material.dart';

class Searchcomponet extends StatefulWidget {
  const Searchcomponet({super.key});

  @override
  State<Searchcomponet> createState() => _SearchcomponetState();
}

class _SearchcomponetState extends State<Searchcomponet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              // Implement search functionality
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 50),
              backgroundColor: Colors.orange[600],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Search',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
