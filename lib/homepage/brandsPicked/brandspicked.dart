import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Brandspicked extends StatefulWidget {
  const Brandspicked({super.key});

  @override
  State<Brandspicked> createState() => _BrandspickedState();
}

class _BrandspickedState extends State<Brandspicked> {
  @override
  Widget build(BuildContext context) {
    // Add image paths to the list of maps
    final List<Map<String, String>> brands = [
      {
        "text1": "Upto 33% OFF",
        "text2": "Cerave",
        "image": "assets/images/sunscreen2.webp"
      },
      {
        "text1": "Flat 5% OFF",
        "text2": "Minimalist",
        "image": "assets/images/sunscreen.webp"
      },
      {
        "text1": "Upto 50% OFF",
        "text2": "Mamaearth",
        "image": "assets/images/serum.webp"
      },
      {
        "text1": "Upto 17% OFF",
        "text2": "Fix Dearma",
        "image": "assets/images/serum.jpg"
      },
      {
        "text1": "Flat 10% OFF",
        "text2": "Aqualogica",
        "image": "assets/images/prefume.png"
      },
      {
        "text1": "Upto 27% OFF",
        "text2": "The Ordinary",
        "image": "assets/images/moistur1.webp"
      },
      {
        "text1": "Flat 9% OFF",
        "text2": "The Derma Co",
        "image": "assets/images/moist.webp"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/foo.jpg"
      },
      {
        "text1": "Upto 27% OFF",
        "text2": "The Ordinary",
        "image": "assets/images/feeding.png"
      },
      {
        "text1": "Flat 9% OFF",
        "text2": "The Derma Co",
        "image": "assets/images/facewash3.webp"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/facewash2.webp"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/facewash.jpg"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/face2.jpeg"
      },

      {
        "text1": "Upto 27% OFF",
        "text2": "The Ordinary",
        "image": "assets/images/baby3.webp"
      },
      {
        "text1": "Flat 9% OFF",
        "text2": "The Derma Co",
        "image": "assets/images/babyfood.webp"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/babyfor.webp"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/cerum1.webp"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/cerum2.png"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/cerum3.jpg"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/cetaphil.jpg"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/diaper.png"
      },
      {
        "text1": "Upto 32% OFF",
        "text2": "Cosrx",
        "image": "assets/images/diaper1.webp"
      },
      // Add more entries here for a total of 20 or more items
    ];

    return Container(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Brands Picks",
                style: TextStyle(
                    color: Color.fromARGB(255, 22, 32, 234),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " For You",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.point_of_sale_outlined,
                color: Color.fromARGB(255, 22, 32, 234),
              ),
            ],
          ),
          Wrap(
            spacing: 16, // Horizontal spacing between items
            runSpacing: 16, // Vertical spacing between lines
            children: brands.map((brand) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 250,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            brand['image']!, // Dynamically load the image path
                            height: 220,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Blurred Text Overlay for text1
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 25,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                brand['text1']!, // Display text1
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 22, 32, 234),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Display text2 under text1
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      brand['text2']!, // Display text2
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
