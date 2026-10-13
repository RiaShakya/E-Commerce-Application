import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE & BADGES SECTION
          Stack(
            children: [
              // 1. The Image Background
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  image: DecorationImage(
                    image: AssetImage(product.image), // Using local assets
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // 2. SALE Badge (Moved back to Top-Left)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "SALE",
                    style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // 3. Favorite Button (Top-Right)
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${product.name} added to wishlist!'), duration: const Duration(seconds: 2)),
                    );
                  },
                ),
              ),
            ],
          ),

          // DETAILS & BUTTONS SECTION
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  'Rs. ${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 8),

                // 4. Buttons Row (Add to Cart + Share)
                Row(
                  children: [
                    // Expanded makes the Add to Cart button take up the remaining space
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('${product.name} added to cart!'), duration: const Duration(seconds: 2)),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.symmetric(vertical: 8), // Keeps button height balanced
                        ),
                        child: const Text("Add to Cart"),
                      ),
                    ),

                    // Share Button sits on the right side
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.blueGrey, size: 20),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}