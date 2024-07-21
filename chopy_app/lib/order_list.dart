import 'package:chopy_app/product_list.dart';
import 'package:chopy_app/cart_list.dart';

class OrderList {
  const OrderList({required this.products});

  final List<ProductList> products;
  
}

List<ProductList> ordersList = [
   const ProductList(
      name: "Iron",
      category: "Appliances",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/appliances3.jpeg",
      percent: "15"),
    const ProductList(
      name: "Power Bank Apple",
      category: "Electronics",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/electronics1.jpg",
      percent: "15"),
  ];

void orderProducts({products}) {
  for (var product in products) {
    ordersList.add(product);
  }

  cartList = [];


}

  