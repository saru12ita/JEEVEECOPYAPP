import 'package:flutter/material.dart';
import 'package:jeeveeapp/containers/FaceMoisturizer/face_moisturizers_main.dart';

class FaceMoisturizers extends StatefulWidget {
  const FaceMoisturizers({super.key});

  @override
  State<FaceMoisturizers> createState() => _FaceMoisturizersState();
}

class _FaceMoisturizersState extends State<FaceMoisturizers> {
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
                    "Face Moisturizer & Day Cream",
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
                  FaceMoisturizersMain(),
                  FaceMoisturizersMain(),
                  FaceMoisturizersMain(),
                  FaceMoisturizersMain(),
                  FaceMoisturizersMain()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
