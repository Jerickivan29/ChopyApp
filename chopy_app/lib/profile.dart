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
    final screenWidth = MediaQuery.of(context).size.width;

    final buttonSize = screenWidth < 600 ? Size(120, 120) : Size(150, 150);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            onBackTap(1);
          },
        ),
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
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
              SizedBox(height: 30), 
              BoxSection('Order', Icons.add_box_outlined, 'Wishlist', Icons.favorite_border_outlined, buttonSize),
              BoxSection('Coupons', Icons.card_giftcard, 'Help Center', Icons.headphones, buttonSize), 
              SizedBox(height: 30),
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
              backgroundImage: AssetImage("assets/images/ID_PIC.jpg"), 
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
          },
          style: ElevatedButton.styleFrom(
            minimumSize: buttonSize,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(ficon, size: 40, color: Colors.pink), 
              SizedBox(height: 8), 
              Text(ftext),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            minimumSize: buttonSize, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(sicon, size: 40, color: Colors.pink), 
              SizedBox(height: 8),
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
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Edit Profile'),
        ),
        SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Save Address'),
        ),
        SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
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
