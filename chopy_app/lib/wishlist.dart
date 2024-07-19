import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Wishlist extends StatelessWidget {
  final Function(int) onBackTap;

  const Wishlist({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 201, 206),
        title: Row(
          children: [
            GestureDetector(
              child: Icon(
                Icons.chevron_left,
                size: 30,
              ),
              onTap: () => onBackTap(0),
            ),
            Text('Wish List'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(child: Text("Wishlist")),
    );
  }
}
