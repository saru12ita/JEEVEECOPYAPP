import 'package:flutter/material.dart';
import 'package:jeeveeapp/components/Search_textfield.dart';

class MyContactPage extends StatelessWidget {
  const MyContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60), // Height of the search bar
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBarWithBarcode(
              onBarcodeTap: () {
                print("Barcode Icon Tapped!");
              },
              onSearch: (value) {
                print("Search input: $value");
              },
            ),
          ),
        ),
      ),   
        body: Padding(
            padding: const EdgeInsets.all(12.0), // Padding outside the container
            child: Container(
              color: const Color(0xFFF2F2F2), // Background color of the container
              child: Padding(
                padding: const EdgeInsets.all(12.0), // Padding inside the container
                child: ListView(
                  children: [
                    
                    // Title Section
                    Align(
                      alignment: Alignment.centerLeft, // You can change the alignment here
                      child: Text(
                        "JeeVee",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const SizedBox(height: 45.0),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Center everything horizontally
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text and image vertically
                    children: [
                      // Text in a column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start, // Align text vertically
                        crossAxisAlignment: CrossAxisAlignment.start, // Center the text horizontally within the column
                        children: [
                          Text(
                            "Nepal's #1",
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 234, 51, 112),
                            ),
                          ),
                          Text(
                            "health care",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.purple,
                            ),
                          ),
                          Text(
                            "app",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 50), // Add spacing between text and image
                      // Image at the end
                      Image.asset(
                        'assets/icons/Contacthand.png', // Replace with your actual image path
                        width: 130,
                        height: 130,
                      ),
                    ],
                  ),


                    const SizedBox(height: 45.0),

                    // Call Section
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Image placed next to the text without overlap
                            Image.asset(
                              'assets/icons/Contactphone.png', // Your image asset
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 10), // Space between the image and the text
                            Text(
                              "Give us a Call",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "01-5970680",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "+977 98011-65960",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/contactwhatsapp.png',
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              'assets/icons/contactviber.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),


                      
                   const SizedBox(height: 45.0),


                    // Message Section
                    Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Image.asset(
                        'assets/icons/contactemail.png',
                        height: 20,
                        width: 20,
                      ),
                      Positioned(
                        left: 30,
                        child: Text(
                          "Send us a Message",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "support@jeeveehealth.com.np",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

    );
  }
}
