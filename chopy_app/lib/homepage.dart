import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final Color bgNavColor = const Color.fromARGB(255, 113, 201, 206);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgNavColor,
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: CarouselSlider(
          items: [
            "assets/images/car1.jpg",
            "assets/images/car2.jpg",
            "assets/images/car3.jpg"
          ].map((i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                child: Image.asset(
                  i,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover, 
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 150,
            viewportFraction: 1.0, 
            enableInfiniteScroll: true, 
            autoPlay: true,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: bgNavColor,
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/ID_PIC.jpg"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Your Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Your Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: bgNavColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: bgNavColor),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Products'),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Featured'),
            ),
            const ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Wishlist'),
            ),
            const ListTile(
              leading: Icon(Icons.list_alt),
              title: Text('Orders'),
            ),
            const ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Cart'),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
