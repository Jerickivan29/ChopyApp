import 'package:chopy_app/main.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {


  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: const Icon(
                Icons.chevron_left,
                size: 30,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                ),
            ),
            const Text('All Categories'),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text("hi"),
      ),
    );
  }
}
