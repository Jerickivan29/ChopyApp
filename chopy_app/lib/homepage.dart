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
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: CarouselSlider(
              items: [
                "assets/images/car1.jpg",
                "assets/images/car2.jpg",
                "assets/images/car3.jpg"
              ].map((i) {
                return Image.asset(
                  i,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                );
              }).toList(),
              options: CarouselOptions(
                height: 150,
                viewportFraction: 1.0,
                autoPlay: true,
              ),
            ),
          ),
          const HomeCategories(),
        ]),
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

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryItem(
                image: "assets/images/home_category1.jpg",
                category: "Mobiles",
              ),
              CategoryItem(
                image: "assets/images/home_category2.jpg",
                category: "Furniture",
              ),
              CategoryItem(
                image: "assets/images/car1.jpg",
                category: "Fashion",
              ),
              CategoryItem(
                image: "assets/images/car2.jpg",
                category: "Furniture",
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryItem(
                image: "assets/images/home_category1.jpg",
                category: "Grocery",
              ),
              CategoryItem(
                image: "assets/images/home_category2.jpg",
                category: "Toys",
              ),
              CategoryItem(
                image: "assets/images/car1.jpg",
                category: "Appliances",
              ),
              CategoryItem(
                image: "assets/images/car2.jpg",
                category: "More",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String category;

  const CategoryItem({
    super.key,
    required this.image,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Column(children: [
      CircleAvatar(
        radius: (deviceWidth / 4) * 0.5 - 30,
        backgroundImage: AssetImage(image),
      ),
      Text(category),
    ]);
  }
}
