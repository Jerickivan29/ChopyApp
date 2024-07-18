import 'package:flutter/material.dart';
import 'package:chopy_app/homepage.dart';

class Categories extends StatelessWidget {
  final Function(int) onBackTap;

  const Categories({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 201, 206),
        title: Row(
          children: [
            GestureDetector(
              child: Icon(
                Icons.chevron_left,
                size: 30,
              ),
              onTap: () => onBackTap(0),
            ),
            Text('All Categories'),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeCategories(onCategoryTap: (int index) {
              // Handle category tap
            }),
            OtherCategories(imagePath: 'assets/images/car1.jpg', title: 'Sweatshirts', subtitle: 'Collections', buttonColor: Colors.blue,),
            OtherCategories(imagePath: 'assets/images/car1.jpg', title: 'Cap', subtitle: 'Collections', buttonColor: Colors.blue,),
            OtherCategories(imagePath: 'assets/images/car1.jpg', title: 'Jackets', subtitle: 'Collections', buttonColor: Colors.blue,),
            OtherCategories(imagePath: 'assets/images/car1.jpg', title: 'Tshirts', subtitle: 'Collections', buttonColor: Colors.blue,),
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
                  color: Colors.black.withOpacity(0.4),
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
                          // Handle button click
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
