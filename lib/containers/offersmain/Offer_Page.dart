import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jeeveeapp/homepage/bestsellers/bestsellers.dart';
import 'package:jeeveeapp/homepage/boardgames/boardSection.dart';
import 'package:jeeveeapp/homepage/brandsPicked/brandspicked.dart';
import 'package:jeeveeapp/homepage/mostSearched/searchedBrands.dart';
import 'package:jeeveeapp/homepage/weeklyBrand/weeklyBrand.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  final PageController _offerController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> imagePaths = [
    'assets/images/offer3.webp',
    'assets/images/offer5.gif', // Additional image
    'assets/images/offer4.png', // Additional image
    'assets/images/offer6.jpg', // Another additional image
    'assets/images/offer7.jpg', // Another additional image
    ...List.generate(
        2,
        (index) =>
            'assets/images/offer${index + 1}.png'), // sale1.png, sale2.png, etc.
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer.cancel();
    _offerController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        _currentPage = (_currentPage + 1) % imagePaths.length;
      });
      _offerController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView.builder(
                  controller: _offerController,
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        imagePaths[index],
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "Serums & Essence Offers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "View All",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 16, 174, 237),
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Weeklybrand(),
            SearchedBrands(),
            Bestsellers(),
            Boardsection(),
            Brandspicked()
          ],
        ),
      ),
    );
  }
}
