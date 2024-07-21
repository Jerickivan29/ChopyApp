import 'package:chopy_app/product_list.dart';

class CartList {
  CartList({this.product}) {
    if (product != null) {
      cartList.add(product!);
    }
  }

  final ProductList? product;

  
}

List<ProductList> cartList = [
    const ProductList(
      name: "White Bag",
      category: "Accessories",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra.",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/accessories2.jpeg",
      percent: "15",
    ),
    const ProductList(
      name: "Black Watch",
      category: "Accessories",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra.",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/accessories3.jpeg",
      percent: "15",
    ),
  ];

void addProductToCart(ProductList product) {
  cartList.add(product);
}

double calculateTotal() {
  return cartList.fold(0, (sum, item) => sum + item.discountedPrice);
}

