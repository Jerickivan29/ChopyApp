import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Page'),
        automaticallyImplyLeading: false, 
      ),
      body: const Center(
        child: Text("hi"),
      ),
    );
  }
}