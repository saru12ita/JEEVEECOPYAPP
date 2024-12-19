import 'package:flutter/material.dart';

class SearchBarWithBarcode extends StatelessWidget {
  final String placeholder;
  final VoidCallback onBarcodeTap;
  final Function(String) onSearch;

  const SearchBarWithBarcode({
    super.key,
    this.placeholder = "Search for Products, Medicine...",
    required this.onBarcodeTap,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Search Text Field
        Expanded(
          child: Container(
            height: 38, // Set fixed height here
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    onChanged: onSearch,
                    style: const TextStyle(fontSize: 16), // Adjust font size for better look
                    decoration: InputDecoration(
                      hintText: placeholder,
                      border: InputBorder.none, // Removes underline
                      contentPadding: const EdgeInsets.symmetric(vertical: 10), // Adjust internal padding
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10), // Space between search bar and barcode icon
        // Barcode Icon Outside
        GestureDetector(
          onTap: onBarcodeTap,
          child: const Icon(
            Icons.qr_code_scanner,
            color: Colors.blueAccent,
            size: 23,
          ),
        ),
      ],
    );
  }
}
