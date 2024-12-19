import 'package:flutter/material.dart';
import 'package:jeeveeapp/productDetails/productDetails.dart';

class SkinPage extends StatelessWidget {
  const SkinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skin', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.qr_code_scanner),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap body in SingleChildScrollView for better scrolling
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for Products, Medicine...',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            // Sort and Filter Row
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("Sort tapped");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.sort, color: Colors.grey),
                          Text('Sort', style: TextStyle(color: Colors.grey)),
                          Text(
                            'No Sort Applied',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.grey[400],
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("Filter tapped");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.filter_alt, color: Colors.grey),
                          Text('Filter', style: TextStyle(color: Colors.grey)),
                          Text(
                            'Apply Filter',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Image Placeholder (Added below the filter section)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: Image.asset(
                  'assets/images/facewash3.webp', // Replace this with your image path
                  fit: BoxFit
                      .contain, // Change BoxFit to contain to avoid cropping
                  width: 150, // Adjusted size for better view
                  height: 150, // Adjusted size for better view
                ),
              ),
            ),
            // Product Cards Grid
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                shrinkWrap:
                    true, // Allows grid view to take only required space
                physics:
                    NeverScrollableScrollPhysics(), // Disable scrolling inside grid view
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 0.6,
                ),
                itemCount: 16, // Number of products
                itemBuilder: (context, index) {
                  return ProductCard(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final int index;

  const ProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "image": "assets/images/moist.webp",
        "title": "Aadhya Women Embroidered Flared Kurta",
        "price": "NPR. 1529.85",
        "oldPrice": "NPR. 1645",
        "discount": "7% Off",
        "savings": "Save NPR. 115.15",
        "rating": "4.8 / 5",
        "reviews": "(11)",
      },
      {
        "image": "assets/images/moistur1.webp",
        "title": "Aadhya Red Green Stone-studded Jewellery Set",
        "price": "NPR. 2899",
        "rating": "4.5 / 5",
        "reviews": "(72)",
      },
      {
        "image": "assets/images/prefume.png",
        "title": "Golden Bangles Set",
        "price": "NPR. 1899",
        "rating": "4.0 / 5",
        "reviews": "(20)",
      },
      {
        "image": "assets/images/serum.webp",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/serum.jpg",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/serum.webp",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/sunscreen.webp",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/sunscreen2.webp",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/moist.webp",
        "title": "Aadhya Women Embroidered Flared Kurta",
        "price": "NPR. 1529.85",
        "oldPrice": "NPR. 1645",
        "discount": "7% Off",
        "savings": "Save NPR. 115.15",
        "rating": "4.8 / 5",
        "reviews": "(11)",
      },
      {
        "image": "assets/images/moistur1.webp",
        "title": "Aadhya Red Green Stone-studded Jewellery Set",
        "price": "NPR. 2899",
        "rating": "4.5 / 5",
        "reviews": "(72)",
      },
      {
        "image": "assets/images/prefume.png",
        "title": "Golden Bangles Set",
        "price": "NPR. 1899",
        "rating": "4.0 / 5",
        "reviews": "(20)",
      },
      {
        "image": "assets/images/serum.webp",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/serum.jpg",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/serum.webp",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/sunscreen.webp",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
      {
        "image": "assets/images/sunscreen2.webp",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
        "rating": "3.9 / 5",
        "reviews": "(15)",
      },
    ];

    final product = products[index];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
                child: Image.asset(
                  product["image"]!,
                  fit: BoxFit.cover,
                  height: 120,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(
                    'BESTSELLER',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 22, 32, 234),
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product["title"]!,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    SizedBox(width: 4),
                    Text(
                      "${product["rating"]} ${product["reviews"]}",
                      style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                if (product["oldPrice"] != null) ...[
                  Text(
                    product["oldPrice"]!,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.red,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    "${product["price"]} ${product["discount"]}",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.green,
                    ),
                  ),
                ] else
                  Text(
                    product["price"]!,
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                SizedBox(height: 8),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.grey),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 22, 32, 234),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Productdetails()),
                          );
                        },
                        child: Text('Add to cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            )),
                      ),
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
