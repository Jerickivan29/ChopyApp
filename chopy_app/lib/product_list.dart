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
      category: "Jackets",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/jacket1.jpeg",
      percent: "40"),
  const ProductList(
      name: "Tecno 101",
      category: "Jackets",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 3000,
      discountedPrice: 1000,
      imagePath: "assets/images/jacket2.jpeg",
      percent: "50"),
  const ProductList(
      name: "Jerick 10",
      category: "Jackets",
      description: "dfsdf ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/jacket3.jpeg",
      percent: "30"),
  const ProductList(
      name: "Russel 10",
      category: "Jackets",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/jacket4.jpeg",
      percent: "15"),
  const ProductList(
      name: "Russel 10",
      category: "Fashion",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/home_category2.jpg",
      percent: "15"),
      //Accessories
    const ProductList(
      name: "Black Shades",
      category: "Accessories",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra.",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/accessories1.jpeg",
      percent: "15"),
    const ProductList(
      name: "White Bag",
      category: "Accessories",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/accessories2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Black Watch",
      category: "Accessories",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/accessories3.jpeg",
      percent: "15"),
      //Appliances
    const ProductList(
      name: "Vaporizador",
      category: "Appliances",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/appliances1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Microwave",
      category: "Appliances",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/appliances2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Iron",
      category: "Appliances",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/appliances3.jpeg",
      percent: "15"),
      //Electronics
    const ProductList(
      name: "Power Bank Apple",
      category: "Electronics",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/electronics1.jpg",
      percent: "15"),
    const ProductList(
      name: "White Head Set",
      category: "Electronics",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/electronics2.jpg",
      percent: "15"),
    const ProductList(
      name: "Black Head Set",
      category: "Electronics",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/electronics3.jpg",
      percent: "15"),
      //Mobiles
    const ProductList(
      name: "Oppo",
      category: "Mobiles",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/cp1.jpg",
      percent: "15"),
    const ProductList(
      name: "Samsung",
      category: "Mobiles",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/cp2.jpg",
      percent: "15"),
    const ProductList(
      name: "Nokia",
      category: "Mobiles",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/cp3.jpeg",
      percent: "15"),
      //Fashion
    const ProductList(
      name: "White Shoes",
      category: "Fashion",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/fashion1.png",
      percent: "15"),
    const ProductList(
      name: "Blue Long Sleeves",
      category: "Fashion",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/fashion2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Crop Top Black",
      category: "Fashion",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/fashion3.jpeg",
      percent: "15"),
      //Furniture
    const ProductList(
      name: "White Table",
      category: "Furniture",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/furniture1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Pink Chair",
      category: "Furniture",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/furniture2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Display Wall",
      category: "Furniture",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/furniture3.jpeg",
      percent: "15"),
      //Grocery
    const ProductList(
      name: "Skittles",
      category: "Grocery",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/grocery1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Kitkat",
      category: "Grocery",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/grocery2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Lays",
      category: "Grocery",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/grocery3.jpeg",
      percent: "15"),
      //Toys
    const ProductList(
      name: "White Bear",
      category: "Toys",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/toys1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Pink Bear",
      category: "Toys",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/toys2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Brown Bear",
      category: "Toys",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/toys3.jpeg",
      percent: "15"),


    
];

List<ProductList> getProductByCategory(String category) {
  return products.where((product) => product.category == category).toList();
}
