import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        actions: [
          // New Wishlist / Favorite Button
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.redAccent),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${product.name} added to wishlist!'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
          ),
          // Existing Share Button
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Sharing ${product.name}...'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                image: DecorationImage(
                  image: AssetImage(product.image), // Using local assets
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category Tag
                  Text(
                    product.category.toUpperCase(),
                    style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Title and Rating Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                            product.name,
                            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 4),
                          Text(
                              product.rating.toString(),
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Price
                  Text(
                    'Rs. ${product.price.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 28, color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 24),

                  // Description
                  const Text(
                      "Description",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                  const SizedBox(height: 8),
                  Text(
                      product.description,
                      style: const TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Sticky Add to Cart Button at the bottom of the screen
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -5)
            )
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text('${product.name} added to cart!'),
                  duration: const Duration(seconds: 2)
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          child: const Text(
              "Add to Cart",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
          ),
        ),
      ),
    );
  }
}