import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Blue Section
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), // Adjust radius as needed
              topRight: Radius.circular(20.0), // Rounded for top corners
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFeatureRow(
                Icons.payment,
                "Payment Options",
                "Safe and secure payments",
              ),
              SizedBox(height: 16),
              _buildFeatureRow(
                Icons.verified,
                "Genuine Products",
                "Sourced directly from brands",
              ),
              SizedBox(height: 16),
              _buildFeatureRow(
                Icons.branding_watermark,
                "1500 Brands",
                "Curated over 3 Lakh+ products",
              ),
              SizedBox(height: 30),
              Text(
                "Available on",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Row(
                children: [
                  SizedBox(height: 5),
                  Image.asset(
                    'assets/images/gpoa.png',
                    height: 150,
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    'assets/images/IOSA.png',
                    height: 55,
                  ),
                ],
              )
            ],
          ),
        ),

        // Black Section
        Container(
          color: const Color.fromARGB(255, 30, 28, 28),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Image.asset('assets/images/itharimedical.webp',
                      color: Colors.blue, height: 130),
                  SizedBox(width: 8),
                ],
              ),
              SizedBox(height: 4),
              Text(
                "Itahari Health Pvt. Ltd.\nItahari-6 (Paschim Line)\nSunsari, Nepal",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              SizedBox(height: 22),

              // Links Section
              Text(
                "Get to Know Us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              _buildTextLink("About Us"),
              _buildTextLink("List Your Products Here"),

              SizedBox(height: 20),
              Text(
                "Connect with Us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Center-align the row
                children: [
                  Image.asset(
                    'assets/icons/facebook.png', // Local path to the Facebook icon
                    height: 34, // Adjust the size of the icon
                    width: 34,
                  ),
                  SizedBox(width: 8), // Spacing between icons
                  Image.asset(
                    'assets/icons/instagram.png', // Local path to the Messenger icon
                    height: 34,
                    width: 34,
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/tiktok2.png', // Local path to the TikTok icon
                    height: 34,
                    width: 34,
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/youtube.png', // Local path to the YouTube icon
                    height: 34,
                    width: 34,
                  ),
                ],
              ),

              SizedBox(height: 16),

              // Contact Section
              Text(
                "For any help, you may call us at",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "+977 9820758100",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  //  Spacer(),
                  SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/viber.png',
                    height: 40,
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/whatsapp.png',
                    height: 40,
                  ),
                ],
              ),
              Text(
                "025-584100, 025-581112\n(Sun to Fri, 9 AM to 6 PM)",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(
              vertical: 8.0, horizontal: 16.0), // Optional padding
          child: Column(
            mainAxisSize: MainAxisSize.min, // Adjust height to content
            crossAxisAlignment:
                CrossAxisAlignment.center, // Centers horizontally
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centers horizontally within the row
                children: [
                  _buildTextLink("Terms & Conditions"),
                  SizedBox(width: 16), // Spacing between links
                  _buildTextLink("Policies"),
                ],
              ),
              SizedBox(height: 8), // Spacing between rows
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centers horizontally within the row
                children: [
                  Text(
                    "© 2024, itaharimedical.com",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureRow(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 50),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildTextLink(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
