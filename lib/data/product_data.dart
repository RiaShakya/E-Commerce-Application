import '../models/product.dart';

final List<String> categories = [
  "Electronics",
  "Fashion",
  "Shoes",
  "Beauty",
  "Accessories"
];

final List<Product> dummyProducts = [
  Product(
    name: "Pro Wireless Headphones",
    category: "Electronics",
    image: "assets/images/headphones.jpg",
    price: 299.99,
    rating: 4.8,
    description: "Active noise-canceling over-ear headphones with 30-hour battery life.",
  ),
  Product(
    name: "Smartphone 14 Pro",
    category: "Electronics",
    image: "assets/images/phone.jpg",
    price: 999.00,
    rating: 4.9,
    description: "Latest 5G smartphone with an advanced camera system.",
  ),
  Product(
    name: "Classic Cotton T-Shirt",
    category: "Fashion",
    image: "assets/images/tshirt.jpg",
    price: 25.00,
    rating: 4.5,
    description: "100% organic cotton t-shirt for everyday wear.",
  ),
  Product(
    name: "Denim Jacket",
    category: "Fashion",
    image: "assets/images/jacket.jpg",
    price: 89.99,
    rating: 4.7,
    description: "Vintage wash denim jacket with a comfortable fit.",
  ),
  Product(
    name: "Running Sneakers",
    category: "Shoes",
    image: "assets/images/sneakers.jpg",
    price: 120.00,
    rating: 4.6,
    description: "Lightweight running shoes with responsive cushioning.",
  ),
];