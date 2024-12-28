import 'package:flutter/material.dart';
import 'package:jeeveeapp/components/Search_textfield.dart';

class MyAboutPage extends StatelessWidget {
  const MyAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBarWithBarcode(
              onBarcodeTap: () {
                print("Barcode is tapped!");
              },
              onSearch: (value) {
                print("Search input is $value");
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          color: const Color.fromARGB(255, 246, 243, 243),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nepal’s No.1 Health, Baby & Beauty Store',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'Initially established in 2019 with the aim of digitizing the healthcare sector, Jeevee moved towards setting up as an online hub not just for health but baby and beauty products as well.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'And all in all the tech company was solidified to cater to customer needs and provide them with the best shopping experience and thrived to provide quality, authentic and reliable products at an affordable price with innovative technology.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        'With 1500+ brands and 3 Lakhs+ products, Jeevee offers a wide range of curated collections of makeup, skincare, hair care, fragrance, makeup, personal care, household, appliances, and health and wellness categories.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Our Key Features',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        '1. Nepal’s No.1 Health, Baby & Beauty Store',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Apart from being a prominent player in the healthcare arena, we have expanded our domain to cater to the overall head-to-toe, daily needs of consumers and babies positioning itself as the #1 Health, Baby, and Beauty Store.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        '2. 100% Authentic Products',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'We have a dedicated team who ensures the quality and authenticity of the products before sourcing them in our store from brands and authorized distributors.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      const Text(
                        '3. Nepal’s First Semi-Automated Fulfillment Center',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Whilst stepping up the efforts for a wider market presence and addressing the demands of every customer, Jeevee has reorganized a fulfillment center of 15,800 sqft where the team operates day-in-day-out to provide on-time delivery for 90% of orders.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        '4. Completely Homegrown',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'What sets us apart is our home-grown foundation, we share complete locally-based human resources, driven to bring change in standards of society with the flexibility of online shopping.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'We have a talented team of Nepali Software Engineers fully committed to the development of functional app/web applications while incorporating the most effective design principles, robust architecture, analytics, and ML/AI models behind the scene.',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      // Adding images with no space in between
                      Image.asset(
                        'assets/aboutus/1.png',
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/aboutus/2.png',
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/aboutus/3.png',
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/aboutus/4.png',
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/aboutus/5.png',
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/aboutus/6.png',
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
