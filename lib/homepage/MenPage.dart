import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jeeveeapp/homepage/bestsellers/bestsellers.dart';
import 'package:jeeveeapp/homepage/boardgames/boardSection.dart';
import 'package:jeeveeapp/homepage/brandsPicked/brandspicked.dart';
import 'package:jeeveeapp/homepage/footer.dart'; // Import FooterSection here
import 'package:jeeveeapp/homepage/menHomepage/MenHomeCategory.dart';
import 'package:jeeveeapp/homepage/menHomepage/Menmostsearched/mensearchcard.dart';
import 'package:jeeveeapp/homepage/menHomepage/menweeklybrand/menweeklybrand.dart';
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
    'assets/images/earbuds.jpg',
    'assets/images/menfashion1.webp',
    'assets/images/menfashion2.jpg',
    'assets/images/menfashion3.jpg',
    'assets/images/menfashion4.jpg',
    //  ...List.generate(2, (index) => 'assets/images/offer${index + 1}.png'),
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
            // HomeCategory(),
            MenHomeCategory(),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Best of the Men's World",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 204, 18, 5),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Menweeklybrand(),
            //MenUI(),
            Mensearchcard(),
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
