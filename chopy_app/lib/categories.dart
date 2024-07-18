import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 201, 206),
        title: const Row(
          children: [
            Icon(
              Icons.chevron_left,
              size: 30,
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
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 224, 223, 223), width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildImageButton(
                                  context, 'assets/images/car1.jpg', 'Mobiles'),
                              buildImageButton(context,
                                  'assets/images/car1.jpg', 'Electronics'),
                              buildImageButton(
                                  context, 'assets/images/car1.jpg', 'Fashion'),
                              buildImageButton(context,
                                  'assets/images/car1.jpg', 'Furniture'),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildImageButton(
                                  context, 'assets/images/car1.jpg', 'Grocery'),
                              buildImageButton(context,
                                  'assets/images/car1.jpg', 'Appliances'),
                              buildImageButton(
                                  context, 'assets/images/car1.jpg', 'Toys'),
                              buildImageButton(
                                  context, 'assets/images/car1.jpg', 'Fashion'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            buildCategoryCard('assets/images/car1.jpg', 'Sweatshirts',
                'Collections', Colors.pink, context),
            buildCategoryCard('assets/images/car1.jpg', 'Caps', 'Collections',
                Colors.purple, context),
            buildCategoryCard('assets/images/car1.jpg', 'Jacket', 'Collections',
                Colors.pink, context),
            buildCategoryCard('assets/images/car1.jpg', 'Tshirt', 'Collections',
                Colors.purple, context),
            buildCategoryCard('assets/images/car1.jpg', 'Casual Trouser',
                'Collections', Colors.pink, context),
            buildCategoryCard('assets/images/car1.jpg', 'Cargos', 'Collections',
                Colors.purple, context),
            buildCategoryCard('assets/images/car1.jpg', 'Sunglasess',
                'Collections', Colors.pink, context),
          ],
        ),
      ),
    );
  }

  Widget buildImageButton(
      BuildContext context, String imagePath, String title) {
    return GestureDetector(
      onTap: () {
        // Handle button click
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue, // Set the color of the border
                width: 3, // Set the width of the border
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryCard(String imagePath, String title, String subtitle,
      Color buttonColor, BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Adjust padding as needed
      child: Container(
        width: screenWidth * 0.9, // Use a percentage of the screen width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Positioned.fill makes the image cover the entire card
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Add a semi-transparent overlay for better text readability
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
            // Card content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.end, // Aligns content to the right
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Centers content vertically
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
                            color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button click
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonColor, // Set the background color of the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('SHOP NOW',
                            style: TextStyle(color: Colors.white)),
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
