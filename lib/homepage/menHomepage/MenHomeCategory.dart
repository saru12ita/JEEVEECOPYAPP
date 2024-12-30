import 'package:flutter/material.dart';

class MenHomeCategory extends StatelessWidget {
  const MenHomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Categories Section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCategoryItem("GADGETS", "assets/Mimages/cmachine.png"),
              _buildCategoryItem("APPLIANCES", "assets/Mimages/headphone.png"),
              _buildCategoryItem(
                  "HEALTH & FITNESS", "assets/Mimages/pprotein.png"),
            ],
          ),
        ),

        // New Year Sale Section
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Ithari Medicine New Year Sale",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "NEW YEAR SAVINGS GUARANTEED!",
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 16,
                ),
              ),
              const Text(
                "25 Dec - 5 Jan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

        // Offer Cards
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOfferCard(
                      "Rs.450 OFF", "Min. Purchase: Rs.6,500", "NEWYEAR450"),
                  _buildOfferCard(
                      "Rs.260 OFF", "Min. Purchase: Rs.4,500", "NEWYEAR260"),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOfferCard(
                      "Rs.170 OFF", "Min. Purchase: Rs.3,500", "NEWYEAR170"),
                  _buildOfferCard(
                      "Rs.100 OFF", "Min. Purchase: Rs.2,500", "NEWYEAR100"),
                ],
              ),
            ],
          ),
        ),

        // "Best of the Men's World" Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryItem(String title, String iconPath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: Image.asset(iconPath, height: 30),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildOfferCard(String discount, String condition, String code) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              discount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.green[900],
              ),
            ),
            const SizedBox(height: 4),
            Text(
              condition,
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            ),
            const SizedBox(height: 4),
            Text(
              "Use Code: $code",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.green[900],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
