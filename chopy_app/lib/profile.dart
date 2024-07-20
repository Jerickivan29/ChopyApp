import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(
        onBackTap: (value) {
          // Handle the back tap action here
          print('Back tapped with value: $value');
        },
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final Function(int) onBackTap;

  const Profile({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // Adjust button size based on screen width
    final buttonSize = screenWidth < 600 ? Size(120, 120) : Size(150, 150);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            onBackTap(1); // Call the onBackTap function with a value
          },
        ),
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfileSection(),
              SizedBox(height: 30), // Add space between profile and buttons
              BoxSection('Order', Icons.add_box_outlined, 'Wishlist', Icons.favorite_border_outlined, buttonSize),// Pass buttonSize to BoxSection
              SizedBox(height: 16), // Add space between rows
              BoxSection('Coupons', Icons.card_giftcard, 'Help Center', Icons.headphones, buttonSize), // Pass buttonSize to BoxSection
              SizedBox(height: 30), // Add space before account settings
              AccountSet(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/images/ID_PIC.jpg"), // Replace with your image URL
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thomas Djono',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'ID 02123141',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.edit, color: Colors.pink),
              onPressed: () {
                // Handle edit button press
              },
            ),
          ],
        ),
      ],
    );
  }
}

class BoxSection extends StatelessWidget {
  final Size buttonSize;
  final String ftext;
  final IconData ficon;
  final String stext;
  final IconData sicon;


  const BoxSection(this.ftext, this.ficon, this.stext, this.sicon, this.buttonSize, {super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            // Handle Order button press
          },
          style: ElevatedButton.styleFrom(
            minimumSize: buttonSize, // Use media query size
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // No rounded corners
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(ficon, size: 40, color: Colors.pink), // Adjust size if needed
              SizedBox(height: 8), // Space between icon and text
              Text(ftext),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle Wishlist button press
          },
          style: ElevatedButton.styleFrom(
            minimumSize: buttonSize, // Use media query size
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // No rounded corners
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(sicon, size: 40, color: Colors.pink), // Adjust size if needed
              SizedBox(height: 8), // Space between icon and text
              Text(stext),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountSet extends StatelessWidget {
  const AccountSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // Handle Edit Profile button press
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50), // Full width button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Edit Profile'),
        ),
        SizedBox(height: 12), // Space between buttons
        ElevatedButton(
          onPressed: () {
            // Handle Save Address button press
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50), // Full width button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Save Address'),
        ),
        SizedBox(height: 12), // Space between buttons
        ElevatedButton(
          onPressed: () {
            // Handle Log Out button press
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50), // Full width button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Log Out'),
        ),
      ],
    );
  }
}
