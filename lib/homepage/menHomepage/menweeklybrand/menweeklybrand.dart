import 'package:flutter/material.dart';
import 'package:jeeveeapp/homepage/menHomepage/menweeklybrand/menbrandCard.dart';

class Menweeklybrand extends StatefulWidget {
  const Menweeklybrand({super.key});

  @override
  State<Menweeklybrand> createState() => _MenweeklybrandState();
}

class _MenweeklybrandState extends State<Menweeklybrand> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        itemCount: 5, // Number of items
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Menbrandcard(), // Your custom card widget
          );
        },
      ),
    );
  }
}
