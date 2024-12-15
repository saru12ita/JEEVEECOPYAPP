import 'package:flutter/cupertino.dart';
import 'package:jeeveeapp/JwelleryDetails/Containers/relatedProducts/Jrelatedcard.dart';

class JRelatedproducts extends StatefulWidget {
  const JRelatedproducts({super.key});

  @override
  State<JRelatedproducts> createState() => _JRelatedproductsState();
}

class _JRelatedproductsState extends State<JRelatedproducts> {
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
            child: JRelatedcard(), // Your custom card widget
          );
        },
      ),
    );
  }
}
