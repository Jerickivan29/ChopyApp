import 'package:carousel_slider/carousel_slider.dart';
import 'package:chopy_app/login.dart';
import 'package:flutter/material.dart';
import 'package:chopy_app/products_page.dart';
import 'package:chopy_app/products_category.dart';
import 'package:chopy_app/product_list.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  final Function(int) onCategoryTap;

  const Homepage({super.key, required this.onCategoryTap});

  final Color bgNavColor = const Color.fromARGB(255, 255, 243, 224);

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
          CarouselSlider(
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
          HomeCategories(onCategoryTap: onCategoryTap),
          const SalesBanner(),
          PopularProducts(),
          const DiscountedProducts(),
          const PopularItemSection(),
          const TopSelectionSection(),
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
                    children: [
                      Text(
                        'User Account',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'admin@gmail.com',
                        style: TextStyle(
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
                color: Color.fromARGB(255, 249, 175, 35),
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Color.fromARGB(255, 249, 175, 35)),
              ),
            ),
            GestureDetector(
              child: const ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text('Products'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductsPage(),
                  ),
                );
              },
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
            GestureDetector(
              child: const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
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
                image: "assets/images/more.jpg",
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

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap ??
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductsCategory(category),
              ),
            );
          },
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 2),
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

class SalesBanner extends StatefulWidget {
  const SalesBanner({Key? key}) : super(key: key);

  @override
  _SalesBannerState createState() => _SalesBannerState();
}

class _SalesBannerState extends State<SalesBanner> {
  late Timer _timer;
  Duration _duration = Duration(hours: 14, minutes: 38, seconds: 21);

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_duration.inSeconds <= 0) {
        timer.cancel();
      } else {
        setState(() {
          _duration = _duration - Duration(seconds: 1);
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hours = _duration.inHours.toString().padLeft(2, '0');
    final minutes = (_duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (_duration.inSeconds % 60).toString().padLeft(2, '0');

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
                  "assets/images/blue1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
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
                      CountdownText(
                        hours: hours,
                        minutes: minutes,
                        seconds: seconds,
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

class CountdownText extends StatelessWidget {
  final String hours;
  final String minutes;
  final String seconds;

  const CountdownText({
    Key? key,
    required this.hours,
    required this.minutes,
    required this.seconds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$hours" + "hrs " + "$minutes" + "Mins " + "$seconds" + "Secs",
      style: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
    );
  }
}

class PopularProducts extends StatelessWidget {
  PopularProducts({super.key});

  final List<ProductList> getJackets = getProductByCategory("Jackets");

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
              GestureDetector(child: Text("View All >"), onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductsPage(),
                ),
              ),)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: getJackets.map((product) {
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
                      product.imagePath,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(product.name),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        "₱" + product.price.toString(),
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
          DiscountedProductItem(
              "Headphones", "assets/images/headphone.jpg", "Up to 80% off"),
          DiscountedProductItem(
              "Mobile Phones", "assets/images/phone.jpg", "Up to 50% off"),
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
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Items",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  child: const Text("View All >"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductsPage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const PopularItem("Swing fan", "P2000", "assets/images/fan.jpg",
              "P1299", "400mm, Blue tone", "20% off"),
          const PopularItem(
              "Oneplus Nord",
              "P2000",
              "assets/images/samsung.jpeg",
              "P1299",
              "400mm, Blue tone",
              "20% off"),
          const PopularItem("sdfdsd fan", "P2000", "assets/images/laptop2.jpeg",
              "P1299", "400mm, Blue tone", "20% off"),
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
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(width: 1.0, color: Colors.grey.withOpacity(0.5)))),
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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/shopcart.jpg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopSelectionSection extends StatelessWidget {
  const TopSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      width: MediaQuery.of(context).size.width,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Selection",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopSelectionItem(
                "assets/images/wire.jpg",
                "Wired earphones",
                "upto 50% off",
              ),
              TopSelectionItem(
                "assets/images/iphone3.jpeg",
                "Top Mobiles",
                "upto 50% off",
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TopSelectionItem(
                "assets/images/headphone.jpg",
                "Wired earphones",
                "upto 50% off",
              ),
              TopSelectionItem(
                "assets/images/laptop3.jpeg",
                "Wired earphones",
                "upto 50% off",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopSelectionItem extends StatelessWidget {
  const TopSelectionItem(this.image, this.name, this.discount, {super.key});
  final String image;
  final String name;
  final String discount;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double containerWidth = (deviceWidth / 2) - 20;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Image.asset(
              image,
              width: containerWidth,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              width: containerWidth,
              child: Column(
                children: [
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(discount, style: const TextStyle(color: Colors.grey)),
                ],
              )),
        ],
      ),
    );
  }
}
