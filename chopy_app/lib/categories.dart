import 'package:flutter/material.dart';
import 'package:chopy_app/homepage.dart';
import 'package:chopy_app/products_category.dart';

class Categories extends StatelessWidget {
  final Function(int) onBackTap;

  const Categories({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 243, 224),
        title: Row(
          children: [
            GestureDetector(
              child: const Icon(
                Icons.chevron_left,
                size: 30,
              ),
              onTap: () => onBackTap(0),
            ),
            const Text('All Categories'),
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
      automaticallyImplyLeading: false,),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CategorySection(),
            OtherCategories(imagePath: 'assets/images/categ2.jpg', title: 'Sweatshirts', subtitle: 'Collections', buttonColor: Color.fromARGB(255, 237, 54, 22),),
            OtherCategories(imagePath: 'assets/images/cap.jpg', title: 'Cap', subtitle: 'Collections', buttonColor: Color.fromARGB(255, 44, 5, 237),),
            OtherCategories(imagePath: 'assets/images/pink.jpg', title: 'Jackets', subtitle: 'Collections', buttonColor: Color.fromARGB(255, 103, 1, 114),),
            OtherCategories(imagePath: 'assets/images/shirt1.jpg', title: 'Tshirts', subtitle: 'Collections', buttonColor: Color.fromARGB(255, 1, 109, 37),),
          ],
        ),
      ),
    );
  }
}

class OtherCategories extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final Color buttonColor;

  const OtherCategories({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
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
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductsCategory(title),
              ),
            );

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'SHOP NOW',
                          style: TextStyle(color: Colors.white),
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

class CategorySection extends StatelessWidget {

  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: const Column(
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
                image: "assets/images/rolex.jpg",
                category: "Accessories",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
  

