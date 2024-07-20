class ProductList {

  const ProductList({required this.name, required this.category, required this.description, required this.price});

  final String name;
  final String category;
  final String description;
  final int price;

}

List<ProductList> products = [
  const ProductList(name: "Samsung 10", category: "Gadgets", description: "dhfksdjh ", price: 2000),
  const ProductList(name: "Laptop", category: "Gadgets", description: "dhfksdjh ", price: 2000),
  const ProductList(name: "Pencil", category: "school", description: "dhfksdjh ", price: 2000),
  const ProductList(name: "Paper", category: "school", description: "dhfksdjh ", price: 2000),
];

List<ProductList> getProductByCategory(String category) {
  return products.where((product) => product.category == category).toList();
}