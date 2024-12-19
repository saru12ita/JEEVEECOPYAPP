// brands_screen.dart
import 'package:flutter/material.dart';

final List<Map<String, String>> brandList = [
  {"name": "Aadhya", "imageUrl": "https://via.placeholder.com/50"},
  {"name": "Abbott", "imageUrl": "https://via.placeholder.com/50"},
  {"name": "Acnes", "imageUrl": "https://via.placeholder.com/50"},
  {"name": "Apple", "imageUrl": "https://via.placeholder.com/50"},
  // Add more brands as needed
];

class BrandsScreen extends StatefulWidget {
  const BrandsScreen({super.key});

  @override
  _BrandsScreenState createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  String searchQuery = ''; // Search query
  String selectedCategory = 'ALL'; // Selected category

  // Filter brands based on search query and category
  List<Map<String, String>> get filteredBrands {
    List<Map<String, String>> filtered = brandList;

    // Filter by search query
    if (searchQuery.isNotEmpty) {
      filtered = filtered
          .where((brand) =>
              brand["name"]!.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    }

    // Filter by selected category
    if (selectedCategory != 'ALL') {
      filtered = filtered
          .where((brand) =>
              brand["name"]!.toUpperCase().startsWith(selectedCategory))
          .toList();
    }

    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brands"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Search bar to search for brands
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.black),
                hintText: 'Search for Brands...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // Alphabet categories (ALL, #, A, B, etc.)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ['ALL', '#', 'A', 'B', 'C', 'D']
                  .map((category) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedCategory = category;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedCategory == category
                                ? Colors.blue
                                : Colors.grey,
                          ),
                          child: Text(category),
                        ),
                      ))
                  .toList(),
            ),
          ),
          // List of filtered brands
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: filteredBrands.length,
              itemBuilder: (context, index) {
                var brand = filteredBrands[index];
                return ListTile(
                  leading: Image.network(brand["imageUrl"]!),
                  title: Text(brand["name"]!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
