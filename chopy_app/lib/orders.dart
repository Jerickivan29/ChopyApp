import 'package:chopy_app/main.dart';
import 'package:flutter/material.dart';
import 'package:chopy_app/product_list.dart';
import 'package:chopy_app/order_list.dart';
import 'package:chopy_app/single_product.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductList> allProducts = ordersList;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 243, 224),
        title: Row(
          children: [
            GestureDetector(
              child: const Icon(
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
            const Text('Orders'),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [for (var product in allProducts) OrderTile(product)],
          ),
        ),
      ),
    );
  }
}

class OrderTile extends StatelessWidget {
  const OrderTile(this.product, {super.key});

  final ProductList product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SingleProduct(product),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "#122567",
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                    Text(
                      product.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),Text("Quantity: 1", style: TextStyle(fontSize: 12),)
                  ],
                ),
                Image.asset(
                  product.imagePath,
                  width: 50,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.green)),
                  child: Text(
                    "Completed",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                Text("Price: ₱${product.discountedPrice}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
