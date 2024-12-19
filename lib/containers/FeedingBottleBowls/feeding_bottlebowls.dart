import 'package:flutter/material.dart';
import 'package:jeeveeapp/containers/FeedingBottleBowls/feeding_bottlebowls_main.dart';

class FeedingBottlebowls extends StatefulWidget {
  const FeedingBottlebowls({super.key});

  @override
  State<FeedingBottlebowls> createState() => _FeedingBottlebowlsState();
}

class _FeedingBottlebowlsState extends State<FeedingBottlebowls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feeding Bottle, Bowl & Nipples",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enables horizontal scrolling
              child: Row(
                children: [
                  FeedingBottlebowlsMain(),
                  FeedingBottlebowlsMain(),
                  FeedingBottlebowlsMain(),
                  FeedingBottlebowlsMain(),
                  FeedingBottlebowlsMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
