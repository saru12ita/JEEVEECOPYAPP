import 'package:flutter/material.dart';
import 'package:jeeveeapp/JwelleryDetails/JproductDetails.dart';

class FashionPage extends StatelessWidget {
  const FashionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate to the previous page
          },
        ),
        title: Text(
          'Aadhya',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(Icons.qr_code_scanner, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search for Products, Medicine...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.filter_list, color: Colors.black),
                        SizedBox(width: 4),
                        Text('Filter', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.6,
              ),
              itemCount: 12, // Increase the number of items
              itemBuilder: (context, index) {
                return ProductCard(
                    index: index % 4); // Use modulo for demo items
              },
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
        "image": "assets/images/kurthis.webp",
        "title": "Aadhya Women Embroidered Flared Kurta",
        "price": "NPR. 4409.3",
        "oldPrice": "NPR. 6299",
        "discount": "30% Off",
        "savings": "Save NPR. 1889.7",
      },
      {
        "image": "assets/images/goldd.jpg",
        "title": "Aadhya Red Green Stone-studded Jewellery Set",
        "price": "NPR. 2899",
      },
      {
        "image": "assets/images/bangels.jpg",
        "title": "Golden Bangles Set",
        "price": "NPR. 1899",
      },
      {
        "image": "assets/images/earrings.jpg",
        "title": "Gold-Plated Earrings with Pearls",
        "price": "NPR. 1299",
      },
    ];

    final product = products[index];

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset(
                product["image"]!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
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
                if (product["oldPrice"] != null) ...[
                  Text(
                    "${product["oldPrice"]} ${product["discount"]}",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.red,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    "${product["price"]} ${product["savings"]}",
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
                    Icon(Icons.favorite_border, color: Colors.grey),
                    SizedBox(width: 8),
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
                                builder: (context) => JProductdetails()),
                          );
                        },
                        child: Text('Add to cart',
                            style: TextStyle(color: Colors.white)),
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
