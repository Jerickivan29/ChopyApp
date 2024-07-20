import 'package:flutter/material.dart';
import 'package:chopy_app/main.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 243, 224),
        title: Row(
          children: [
            GestureDetector(
              child: Icon(
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
            Text('Wish List'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.grid_view,
            ),
            onPressed: () {},
          ),
        ],
      automaticallyImplyLeading: false,),
    );
  }
}