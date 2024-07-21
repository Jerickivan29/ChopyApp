import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  final Function(int) onBackTap;

  const Wishlist({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 243, 224),
        title: Row(
          children: [
            GestureDetector(
              child: Icon(
                Icons.chevron_left,
                size: 30,
              ),
              onTap: () => onBackTap(3),
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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            WishlistProduct(imageProduct: 'assets/images/accessories1.jpeg', category: 'Accessories', name: 'Sunglass', desc: 'Latest model with amazing features', price: '\₱799.99',),
            WishlistProduct(imageProduct: 'assets/images/appliances1.jpeg', category: 'Appliances', name: 'Vaporizador', desc: 'Latest model with amazing features', price: '\₱799.99',),
            WishlistProduct(imageProduct: 'assets/images/cap1.jpeg', category: 'Fashion', name: 'New Era', desc: 'Latest model with amazing features', price: '\₱799.99',),
            WishlistProduct(imageProduct: 'assets/images/cp1.jpg', category: 'Mobiles', name: 'Smartphone', desc: 'Latest model with amazing features', price: '\₱799.99',),
            WishlistProduct(imageProduct: 'assets/images/damit1.jpeg', category: 'Fasjion', name: 'T-shirt', desc: 'Latest model with amazing features', price: '\₱799.99',),
            WishlistProduct(imageProduct: 'assets/images/electronics1.jpg', category: 'Electronics', name: 'Power Bank', desc: 'Latest model with amazing features', price: '\₱799.99',),
            WishlistProduct(imageProduct: 'assets/images/fashion1.png', category: 'Fashion', name: 'Nike Air Force', desc: 'Latest model with amazing features', price: '\₱799.99',),
          ],
        ),
      ),
    );
  }
}

class WishlistProduct extends StatelessWidget {
  final String imageProduct;
  final String category;
  final String name;
  final String desc;
  final String price;

  const WishlistProduct({
    super.key,
    required this.imageProduct,
    required this.category,
    required this.desc,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imageProduct),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(category, style: TextStyle(fontSize: 10)),
              Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),  
              Text(desc, style: TextStyle(fontSize: 12, color: Colors.grey)),
              Text(price, style: TextStyle(fontSize: 18, color: Colors.green)),
            ],
          ),
        ],
      ),
    );
  }
}


