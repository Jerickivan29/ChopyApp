class ProductList {
  const ProductList(
      {required this.name,
      required this.category,
      required this.description,
      required this.price,
      required this.imagePath,
      required this.discountedPrice,
      required this.percent});

  final String name;
  final String category;
  final String description;
  final double price;
  final String imagePath;
  final double discountedPrice;
  final String percent;
}

List<ProductList> products = [
  const ProductList(
      name: "Samsung 10",
      category: "Mobiles",
      description: "dhfksdjh ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/home_category1.jpg",
      percent: "40"),
  const ProductList(
      name: "Tecno 101",
      category: "Electronics",
      description: "dhfksdjh ",
      price: 3000,
      discountedPrice: 1000,
      imagePath: "assets/images/home_category2.jpg",
      percent: "50"),
  const ProductList(
      name: "Jerick 10",
      category: "Mobiles",
      description: "dfsdf ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/home_category1.jpg",
      percent: "30"),
  const ProductList(
      name: "Russel 10",
      category: "Electronics",
      description: "dhfksdjh ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/home_category2.jpg",
      percent: "15"),
];

List<ProductList> getProductByCategory(String category) {
  return products.where((product) => product.category == category).toList();
}
