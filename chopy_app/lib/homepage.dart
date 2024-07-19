import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final Function(int) onCategoryTap;

  const Homepage({super.key, required this.onCategoryTap});

  final Color bgNavColor = const Color.fromARGB(255, 113, 201, 206);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgNavColor,
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
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
          HomeCategories(onCategoryTap: onCategoryTap),
          const SalesBanner(),
          const PopularProducts(),
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
  final Function(int) onCategoryTap;

  const HomeCategories({super.key, required this.onCategoryTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryItem(
                image: "assets/images/home_category1.jpg",
                category: "Mobiles",
              ),
              CategoryItem(
                image: "assets/images/home_category2.jpg",
                category: "Electronics",
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
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CategoryItem(
                image: "assets/images/home_category1.jpg",
                category: "Grocery",
              ),
              const CategoryItem(
                image: "assets/images/home_category2.jpg",
                category: "Toys",
              ),
              const CategoryItem(
                image: "assets/images/car1.jpg",
                category: "Appliances",
              ),
              CategoryItem(
                image: "assets/images/three-dots.png",
                category: "More",
                onTap: () => onCategoryTap(1),
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
  final VoidCallback? onTap;

  const CategoryItem({
    super.key,
    required this.image,
    required this.category,
    this.onTap,
  });

  final Color bgNavColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap ?? () {},
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: bgNavColor, width: 2),
          ),
          child: CircleAvatar(
            radius: (deviceWidth / 4) * 0.5 - 15,
            backgroundImage: AssetImage(image),
          ),
        ),
        Text(category),
      ]),
    );
  }
}

class SalesBanner extends StatelessWidget {
  const SalesBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/car1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sales end in",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "14hrs 02Mins 55Secs",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most Popular",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("View All >")
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: [
              "assets/images/car1.jpg",
              "assets/images/car2.jpg",
              "assets/images/car3.jpg"
            ].map((i) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  i,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 150,
              viewportFraction: 0.5,

            ),
          ),
        ],
      ),
    );
  }
}
