import 'package:flutter/material.dart';
import 'package:jeeveeapp/homepage/mostSearched/searchedCard.dart';
import 'package:jeeveeapp/homepage/mostSearched/searchedText.dart';

class SearchedBrands extends StatelessWidget {
  const SearchedBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchedProductsText(),
        const SizedBox(height: 10),
        SizedBox(
          height: 330,
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Horizontal scrolling
            itemCount: 5, // Number of cards
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: SearchedCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}
