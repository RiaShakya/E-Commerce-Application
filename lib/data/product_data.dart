import '../models/product.dart';

final List<String> categories = [
  "Electronics",
  "Fashion",
  "Shoes",
  "Beauty",
  "Accessories"
];

final List<Product> dummyProducts = [
  // ---------------- ELECTRONICS ----------------
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
    name: "Smart Watch Series 8",
    category: "Electronics",
    image: "assets/images/smartwatch.jpg",
    price: 399.00,
    rating: 4.7,
    description: "Keep track of your health and notifications on the go.",
  ),

  // ---------------- FASHION ----------------
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
    name: "Winter Beanie",
    category: "Fashion",
    image: "assets/images/beanie.jpg",
    price: 15.00,
    rating: 4.4,
    description: "Warm knitted beanie for cold weather.",
  ),

  // ---------------- SHOES ----------------
  Product(
    name: "Running Sneakers",
    category: "Shoes",
    image: "assets/images/sneakers.jpg",
    price: 120.00,
    rating: 4.6,
    description: "Lightweight running shoes with responsive cushioning.",
  ),
  Product(
    name: "Leather Loafers",
    category: "Shoes",
    image: "assets/images/loafers.jpg",
    price: 150.00,
    rating: 4.5,
    description: "Genuine leather loafers for office and casual wear.",
  ),

  // ---------------- BEAUTY ----------------
  Product(
    name: "Hydrating Face Serum",
    category: "Beauty",
    image: "assets/images/serum.jpg",
    price: 35.00,
    rating: 4.8,
    description: "Hyaluronic acid serum for all-day skin hydration.",
  ),
  Product(
    name: "Matte Lipstick",
    category: "Beauty",
    image: "assets/images/lipstick.jpg",
    price: 18.00,
    rating: 4.3,
    description: "Long-lasting matte lipstick available in multiple shades.",
  ),
  Product(
    name: "Night Cream",
    category: "Beauty",
    image: "assets/images/cream.jpg",
    price: 45.00,
    rating: 4.6,
    description: "Rejuvenating night cream for smooth skin.",
  ),

  // ---------------- ACCESSORIES ----------------
  Product(
    name: "Minimalist Watch",
    category: "Accessories",
    image: "assets/images/smartwatch.jpg",
    price: 199.99,
    rating: 4.7,
    description: "Elegant stainless steel watch with a minimalist dial.",
  ),
  Product(
    name: "Leather Backpack",
    category: "Accessories",
    image: "assets/images/backpack.jpg",
    price: 75.00,
    rating: 4.5,
    description: "Durable leather backpack with laptop compartment.",
  ),

];