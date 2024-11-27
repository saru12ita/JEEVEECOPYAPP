/*
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    // List of texts for the items
    final List<String> texts = [
      "MAKEUP",
      "SKINCARE",
      "FASHION",
      "GADGETS & APPLIANCES",
      "HAIR",
      "BABY",
      "KIDS FASHION",
      "FRAGRANCES"
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 16, // Horizontal spacing between items
        runSpacing: 16, // Vertical spacing between lines
        children: texts.map((text) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    // Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/skincare.webp',
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Blurred Text Overlay
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
                          color: const Color.fromARGB(255, 213, 206, 206)
                              .withOpacity(0.6), // Semi-transparent black
                        ),
                        child: Center(
                          child: Text(
                            text, // Dynamic text
                            textAlign: TextAlign.center, // Center-align text
                            maxLines: 2, // Allow up to 2 lines
                            overflow: TextOverflow.ellipsis, // Handle overflow
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 8, // Adjust font size to fit
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

*/

import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    // List of texts for the items
    final List<String> texts = [
      "MAKEUP",
      "SKINCARE",
      "FASHION",
      "GADGETS & APPLIANCES",
      "HAIR",
      "BABY",
      "KIDS FASHION",
      "FRAGRANCES"
    ];

    // List of image paths for each category
    final List<String> imagePaths = [
      'assets/images/skincare.jpg',
      'assets/images/skincare.webp',
      'assets/images/skin.webp',
      'assets/images/makeup.avif',
      'assets/images/haircare.avif',
      'assets/images/skincare.webp',
      'assets/images/makeup.avif',
      'assets/images/skincare.webp',
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 16, // Horizontal spacing between items
        runSpacing: 16, // Vertical spacing between lines
        children: List.generate(texts.length, (index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    // Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        imagePaths[
                            index], // Use the corresponding image for each category
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Blurred Text Overlay
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
                          color: const Color.fromARGB(255, 213, 206, 206)
                              .withOpacity(0.6), // Semi-transparent black
                        ),
                        child: Center(
                          child: Text(
                            texts[index], // Dynamic text from the list
                            textAlign: TextAlign.center, // Center-align text
                            maxLines: 2, // Allow up to 2 lines
                            overflow: TextOverflow.ellipsis, // Handle overflow
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 8, // Adjust font size to fit
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
