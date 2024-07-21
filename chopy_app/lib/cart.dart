import 'package:chopy_app/orders.dart';
import 'package:chopy_app/product_list.dart';
import 'package:chopy_app/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:chopy_app/order_list.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductList> products = cartList;

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
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Text('Cart'),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var product in products) CartItem(product)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            width: 1, color: Colors.grey.withOpacity(0.5)))),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Total: ₱${calculateTotal().toString()}",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(width: 5),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                         onTap: () {
                          orderProducts(products: cartList);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OrdersPage()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 249, 175, 35),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Text("Checkout",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem(this.product, {super.key});

  final ProductList product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.grey)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              product.imagePath,
              width: 100,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text("₱${product.discountedPrice.toString()}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "₱${product.price.toString()}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              )
            ],
          ),
          Text("Quantity: 1"),
        ],
      ),
    );
  }
}
