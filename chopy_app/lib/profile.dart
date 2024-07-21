import 'package:chopy_app/cart.dart';
import 'package:chopy_app/coupons.dart';
import 'package:chopy_app/orders.dart';
import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  final Function(int) onBackTap;

  const Profile({super.key, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final buttonSize = screenWidth < 600 ? Size(120, 120) : Size(150, 150);

    final List<Map<String, dynamic>> buttonItems = [
      {'text': 'Order', 'icon': Icons.add_box_outlined},
      {'text': 'Wishlist', 'icon': Icons.settings},
      {'text': 'Coupons', 'icon': Icons.card_giftcard},
      {'text': 'Cart', 'icon': Icons.shopping_cart},
    ];

    final List<void Function()> buttonActions = [
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OrdersPage()),
      ),
      () => onBackTap(2), 
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CouponsPage()),
      ),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CartPage()),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            onBackTap(0);
          },
        ),
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfileSection(),
              SizedBox(height: 30),
              BoxSection(
                buttonSize: buttonSize,
                items: buttonItems,
                onPressedCallbacks: buttonActions,
              ),
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
                    'User1020',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'ID: 02123141',
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
  final List<Map<String, dynamic>> items;
  final List<void Function()> onPressedCallbacks; // List of functions to call on button press

  const BoxSection({
    super.key,
    required this.buttonSize,
    required this.items,
    required this.onPressedCallbacks,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0, // Horizontal spacing between items
      runSpacing: 16.0, // Vertical spacing between rows
      children: List.generate(items.length, (index) {
        return SizedBox(
          width: buttonSize.width,
          height: buttonSize.height,
          child: ElevatedButton(
            onPressed: onPressedCallbacks[index],
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(items[index]['icon'], size: 40, color: Colors.pink),
                SizedBox(height: 8),
                Text(items[index]['text']),
              ],
            ),
          ),
        );
      }),
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
