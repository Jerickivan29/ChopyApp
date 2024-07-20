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
                "assets/images/banner1.jpg",
                "assets/images/banner2.jpg",
                "assets/images/banner3.jpg"
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
          const DiscountedProducts(),
          const PopularItemSection(),
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
                image: "assets/images/mobile.jpg",
                category: "Mobiles",
              ),
              CategoryItem(
                image: "assets/images/electronics.jpg",
                category: "Electronics",
              ),
              CategoryItem(
                image: "assets/images/fashion.jpg",
                category: "Fashion",
              ),
              CategoryItem(
                image: "assets/images/furniture.jpg",
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
                image: "assets/images/grocery.jpeg",
                category: "Grocery",
              ),
              const CategoryItem(
                image: "assets/images/toys.jpg",
                category: "Toys",
              ),
              const CategoryItem(
                image: "assets/images/appliances.jpg",
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most Popular",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("View All >")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: [
              "assets/images/jacket1.jpeg",
              "assets/images/jacket2.jpeg",
              "assets/images/jacket3.jpeg",
              "assets/images/jacket4.jpeg"
            ].map((i) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      i,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text("Jacket"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        "P12,092",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 250,
              viewportFraction: 0.55,
            ),
          ),
        ],
      ),
    );
  }
}

class DiscountedProducts extends StatelessWidget {
  const DiscountedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          bottom: BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.5)),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DiscountedProductItem("Headphones",
              "assets/images/headphone.jpg", "Up to 80% off"),
          DiscountedProductItem("Mobile Phones",
              "assets/images/phone.jpg", "Up to 50% off"),
          DiscountedProductItem(
              "Laptops", "assets/images/laptop1.jpg", "Up to 30% off"),
        ],
      ),
    );
  }
}

class DiscountedProductItem extends StatelessWidget {
  const DiscountedProductItem(this.name, this.image, this.discountText,
      {super.key});

  final String name;
  final String image;
  final String discountText;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Image.asset(image, width: (deviceWidth / 3) - 20),
          Text(name),
          Text(discountText,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class PopularItemSection extends StatelessWidget {
  const PopularItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Items",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("View All >")
            ],
          ),
          PopularItem("Swing fan", "P2000", "assets/images/home_category1.jpg",
              "P1299", "400mm, Blue tone", "20% off")
        ],
      ),
    );
  }
}

class PopularItem extends StatelessWidget {
  const PopularItem(this.name, this.price, this.image, this.discountedPrice,
      this.shortDescription, this.percent,
      {super.key});

  final String name;
  final String image;
  final String discountedPrice;
  final String shortDescription;
  final String price;
  final String percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                shortDescription,
                style: TextStyle(color: Colors.pink),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    percent,
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(width: 5),
                  Text(price),
                    SizedBox(width: 3),
                  Text(discountedPrice)
                ],
              )
            ],
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/ID_PIC.jpg"),
          ),
        ],
      ),
    );
  }
}
