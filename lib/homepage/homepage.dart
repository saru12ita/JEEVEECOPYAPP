/*
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeeveeapp/homepage/bestsellers/bestsellers.dart';
import 'package:jeeveeapp/homepage/boardgames/boardSection.dart';
import 'package:jeeveeapp/homepage/brandsPicked/brandspicked.dart';
import 'package:jeeveeapp/homepage/footer.dart';
import 'package:jeeveeapp/homepage/homeCategory.dart';
import 'package:jeeveeapp/homepage/mostSearched/searchedBrands.dart';
import 'package:jeeveeapp/homepage/weeklyBrand/weeklyBrand.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _offerController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> imagePaths = [
    'assets/images/offer1.png',
    'assets/images/offer2.png',
    // 'assets/images/offer3.webp',
    // 'assets/images/offer5.gif', // Additional image
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
            HomeCategory(),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Brand of the Week",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 204, 18, 5),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [Icon(Icons.sticky_note_2), Text("view all")],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60.0, left: 10),
                      child: Text("piligrim"),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Weeklybrand(),
            SearchedBrands(),
            Bestsellers(),
            Boardsection(),
            Brandspicked(),

          ],
        ),
      ),
    );
  }
}

*/

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeeveeapp/homepage/bestsellers/bestsellers.dart';
import 'package:jeeveeapp/homepage/boardgames/boardSection.dart';
import 'package:jeeveeapp/homepage/brandsPicked/brandspicked.dart';
import 'package:jeeveeapp/homepage/footer.dart'; // Import FooterSection here
import 'package:jeeveeapp/homepage/homeCategory.dart';
import 'package:jeeveeapp/homepage/mostSearched/searchedBrands.dart';
import 'package:jeeveeapp/homepage/weeklyBrand/weeklyBrand.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _offerController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> imagePaths = [
    'assets/images/offer1.png',
    'assets/images/offer2.png',
    'assets/images/offer4.png',
    'assets/images/offer6.jpg',
    'assets/images/offer7.jpg',
    ...List.generate(2, (index) => 'assets/images/offer${index + 1}.png'),
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
            HomeCategory(),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Brand of the Week",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 204, 18, 5),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [Icon(Icons.sticky_note_2), Text("view all")],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60.0, left: 10),
                      child: Text("piligrim"),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            Weeklybrand(),
            SearchedBrands(),
            Bestsellers(),
            Boardsection(),
            Brandspicked(),
            SizedBox(height: 100),
            FooterSection(), // Add FooterSection here
          ],
        ),
      ),
    );
  }
}
