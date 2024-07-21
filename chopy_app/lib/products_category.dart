import 'package:chopy_app/main.dart';
import 'package:flutter/material.dart';
import 'package:chopy_app/product_list.dart';
import 'package:chopy_app/single_product.dart';

class ProductsCategory extends StatelessWidget {
  const ProductsCategory(this.category, {super.key});
  final String category;

  @override
  Widget build(BuildContext context) {
    List<ProductList> productsByCategory = getProductByCategory(category);

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
            Text(category),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            for (var product in productsByCategory)
              ProductTile(product)
          ],
        ),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile(this.product,
      {super.key});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    product.imagePath,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text("₱" + product.discountedPrice.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "₱" + product.price.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "${product.percent}% OFF",
            )
          ],
        ),
      ),
    );
  }
}
