import 'package:flutter/material.dart';

class JProductImage extends StatefulWidget {
  const JProductImage({super.key});

  @override
  State<JProductImage> createState() => _JProductImageState();
}

class _JProductImageState extends State<JProductImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
          height: 300,
          child: Center(
            child: DecoratedBox(
              decoration:
                  BoxDecoration(border: Border.all(), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/jwellery.jpg',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          )),
    );
  }
}
