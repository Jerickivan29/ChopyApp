import 'package:chopy_app/main.dart';
import 'package:flutter/material.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

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
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              ),
            ),
            SizedBox(width: 10), // Add spacing between the icon and the text
            Text('Wish List'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.grid_view),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            CouponsSection(off_per: '25%', Type_category: 'Gadgets', desc: 'On minimum purchase of Rs.', min_pay: '₱ 1,999'),
            CouponsSection(off_per: '15%', Type_category: 'Accesories', desc: 'On minimum purchase of Rs.', min_pay: '₱ 200'),
            CouponsSection(off_per: '15%', Type_category: 'Appliances', desc: 'On minimum purchase of Rs.', min_pay: '₱ 500'),
            CouponsSection(off_per: '50%', Type_category: 'Electronics', desc: 'On minimum purchase of Rs.', min_pay: '₱ 3,999'),
            // Add more CouponsSection widgets here if needed
          ],
        ),
      ),
    );
  }
}

class CouponsSection extends StatelessWidget {
  final String off_per;
  final String Type_category;
  final String desc;
  final String min_pay;

  const CouponsSection({
    super.key,
    required this.off_per,
    required this.Type_category,
    required this.desc,
    required this.min_pay,
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
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue, 
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  off_per,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  "Off",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          // Texts
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Type_category, style: TextStyle(fontSize: 10)),
                Text(desc, style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text(min_pay, style: TextStyle(fontSize: 18, color: Colors.green)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
