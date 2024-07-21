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
      name: "Green Jacket",
      category: "Jackets",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2500,
      discountedPrice: 2000,
      imagePath: "assets/images/jacket1.jpeg",
      percent: "40"),
  const ProductList(
      name: "DC Jacket",
      category: "Jackets",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 1080,
      discountedPrice: 899,
      imagePath: "assets/images/jacket2.jpeg",
      percent: "50"),
  const ProductList(
      name: "Brown Jacket",
      category: "Jackets",
      description: "dfsdf ",
      price: 2999,
      discountedPrice: 1600,
      imagePath: "assets/images/jacket3.jpeg",
      percent: "30"),
  const ProductList(
      name: "Green Jacket",
      category: "Jackets",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/jacket4.jpeg",
      percent: "15"),
      //Accessories
    const ProductList(
      name: "Black Shades",
      category: "Accessories",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra.",
      price: 500,
      discountedPrice: 350,
      imagePath: "assets/images/accessories1.jpeg",
      percent: "15"),
    const ProductList(
      name: "White Bag",
      category: "Accessories",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 3000,
      discountedPrice: 2500,
      imagePath: "assets/images/accessories2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Black Watch",
      category: "Accessories",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 1500,
      discountedPrice: 1250,
      imagePath: "assets/images/accessories3.jpeg",
      percent: "15"),
      //Appliances
    const ProductList(
      name: "Vaporizador",
      category: "Appliances",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 900,
      discountedPrice: 700,
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
      price: 700,
      discountedPrice: 500,
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
      price: 1500,
      discountedPrice: 1250,
      imagePath: "assets/images/electronics2.jpg",
      percent: "15"),
    const ProductList(
      name: "Black Head Set",
      category: "Electronics",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 1500,
      discountedPrice: 1250,
      imagePath: "assets/images/electronics3.jpg",
      percent: "15"),
      //Mobiles
    const ProductList(
      name: "Oppo",
      category: "Mobiles",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 5000,
      discountedPrice: 4500,
      imagePath: "assets/images/cp1.jpg",
      percent: "15"),
    const ProductList(
      name: "Samsung",
      category: "Mobiles",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 7000,
      discountedPrice: 6500,
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
      price: 2500,
      discountedPrice: 1999,
      imagePath: "assets/images/fashion1.png",
      percent: "15"),
    const ProductList(
      name: "Blue Long Sleeves",
      category: "Fashion",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 900,
      discountedPrice: 789,
      imagePath: "assets/images/fashion2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Crop Top Black",
      category: "Fashion",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 600,
      discountedPrice: 525,
      imagePath: "assets/images/fashion3.jpeg",
      percent: "15"),
      //Furniture
    const ProductList(
      name: "White Table",
      category: "Furniture",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 1000,
      discountedPrice: 899,
      imagePath: "assets/images/furniture1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Pink Chair",
      category: "Furniture",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 500,
      discountedPrice: 399,
      imagePath: "assets/images/furniture2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Display Wall",
      category: "Furniture",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 750,
      discountedPrice: 550,
      imagePath: "assets/images/furniture3.jpeg",
      percent: "15"),
      //Grocery
    const ProductList(
      name: "Skittles",
      category: "Grocery",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 90,
      discountedPrice: 80,
      imagePath: "assets/images/grocery1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Kitkat",
      category: "Grocery",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 100,
      discountedPrice: 89,
      imagePath: "assets/images/grocery2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Lays",
      category: "Grocery",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 99,
      discountedPrice: 87,
      imagePath: "assets/images/grocery3.jpeg",
      percent: "15"),
      //Toys
    const ProductList(
      name: "White Bear",
      category: "Toys",
      description: "Lorem ipsum dolor sit amet",
      price: 300,
      discountedPrice: 250,
      imagePath: "assets/images/toys1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Pink Bear",
      category: "Toys",
      description: "Lorem ipsum dolor sit ame ",
      price: 399,
      discountedPrice: 299,
      imagePath: "assets/images/toys2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Brown Bear",
      category: "Toys",
      description: "Lorem ipsum dolor sit ",
      price: 399,
      discountedPrice: 299,
      imagePath: "assets/images/toys3.jpeg",
      percent: "15"),
      //Sweatshirts
    const ProductList(
      name: "Green Sweatshirts",
      category: "Sweatshirts",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 1500,
      discountedPrice: 1000,
      imagePath: "assets/images/sweatshirt1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Peach Sweatshirts",
      category: "Sweatshirts",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 1234,
      discountedPrice: 999,
      imagePath: "assets/images/sweatshirt2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Grey Sweatshirts",
      category: "Sweatshirts",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2462,
      discountedPrice: 1890,
      imagePath: "assets/images/sweatshirt3.jpeg",
      percent: "15"),
      //Cap
    const ProductList(
      name: "NYC Cap",
      category: "Cap",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 500,
      discountedPrice: 435,
      imagePath: "assets/images/cap1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Black Cap",
      category: "Cap",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 580,
      discountedPrice: 480,
      imagePath: "assets/images/cap2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Vintage Cap",
      category: "Cap",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 899,
      discountedPrice: 699,
      imagePath: "assets/images/cap3.jpeg",
      percent: "15"),
      //Tshirts
    const ProductList(
      name: "Cat Tshirts",
      category: "Tshirts",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 599,
      discountedPrice: 499,
      imagePath: "assets/images/damit1.jpeg",
      percent: "15"),
    const ProductList(
      name: "Moon-Eagle Tshirts",
      category: "Tshirts",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 399,
      discountedPrice: 250,
      imagePath: "assets/images/damit2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Star Tshirts",
      category: "Tshirts",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 499,
      discountedPrice: 399,
      imagePath: "assets/images/damit3.jpeg",
      percent: "15"),


    
];

List<ProductList> getProductByCategory(String category) {
  return products.where((product) => product.category == category).toList();
}

List<ProductList> selection1 = [
  const ProductList(
      name: "Moon-Eagle Tshirts",
      category: "Tshirts",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/damit2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Star Tshirts",
      category: "Tshirts",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/damit3.jpeg",
      percent: "15"),
];
List<ProductList> selection2 = [
  const ProductList(
      name: "Black Cap",
      category: "Cap",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/cap2.jpeg",
      percent: "15"),
    const ProductList(
      name: "Vintage Cap",
      category: "Cap",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel egestas dolor, nec dignissim metus. Donec augue elit, rhoncus ac sodales id, porttitor vitae est. Donec laoreet rutrum libero sed pharetra. ",
      price: 2000,
      discountedPrice: 1500,
      imagePath: "assets/images/cap3.jpeg",
      percent: "15"),
];