import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 113,201,206),
          title: const Row(
            children: [
              Icon(Icons.chevron_left, size: 30,),
              Text('Wish List'),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, ),
              onPressed: () {
              },
            ),
          ],
        ),body: const Center(child: Text("Wishlist")),
    );
  }
}