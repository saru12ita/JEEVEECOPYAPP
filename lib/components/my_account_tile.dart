import 'package:flutter/material.dart';
import 'package:jeeveeapp/SplashScreen/Drawer.dart';
import 'package:jeeveeapp/SplashScreen/navbar.dart';

class MyAccountTile extends StatelessWidget {
  const MyAccountTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      /*
      appBar: AppBar(
        title: Text(
          "Account Settings",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto', // Default Flutter font
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      */

/*
      appBar: AppBar(
        toolbarHeight: 140, // Increased height to fit all elements
        backgroundColor: Colors.white, // Customize background color if needed
        leading: Builder(
          builder: (context) => IconButton(
            icon: Transform.rotate(
              angle: 3.1416, // 180 degrees in radians
              child: Transform.scale(
                scaleX: -1, // Flip horizontally
                child: Image.asset(
                  'assets/icons/hamburger.png', // Replace with the path of your image
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            onPressed: () =>
                Scaffold.of(context).openDrawer(), // Open Drawer when clicked
          ),
        ),
        title: Column(
          children: [
            // Replace the image with the title text
            const SizedBox(
                height: 10), // Optional: Adjust spacing before title text
            Text(
              "Account Settings",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto', // Default Flutter font
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
                height:
                    10), // Optional: Space between title text and search bar
            // Replace the existing search bar Row code with this updated version
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8), // Padding around the row
              child: Row(
                children: [
                  // Expanded search bar to take more width
                  Expanded(
                    flex: 9, // Increase the flex value for the search bar
                    child: Container(
                      width: 10,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          hintText: 'Search for Products, Medicines...',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10), // Adjust for alignment
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width:
                          8), // Spacing between the search bar and the barcode icon
                  // Barcode icon with a fixed width to allow more space for the search bar
                  SizedBox(
                    width: 40, // Fixed width for the barcode icon
                    child: IconButton(
                      icon: Image.asset(
                        'assets/icons/barcode.png', // Replace with your barcode icon path
                        width: 24,
                        height: 24,
                        color: Colors.black87, // Set color for the icon
                      ),
                      onPressed: () {
                        // Barcode scanning functionality
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        centerTitle: true, // Center the content of the AppBar
      ),

*/

      body: Container(
        color: Color(0xFFF2F2F2),
        child: ListView(
          padding: const EdgeInsets.all(10.0), // Adds padding around the list
          children: [
            // Login Tile Container
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/icons/login.png', // Replace with your actual app icon path
                  width: 28,
                  height: 28,
                ),
                title: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: 'Roboto', // Default Flutter font
                    fontSize: 14.0,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                  color: Colors.grey,
                ),
                onTap: () {
                  // Login functionalities
                },
              ),
            ),
            SizedBox(height: 8), // Spacing between containers

            // Join Jeevee Tile Container
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/icons/Person.png', // Replace with your actual app icon path
                  width: 28,
                  height: 28,
                ),
                title: Text(
                  "Join Jeevee",
                  style: TextStyle(
                    fontFamily: 'Roboto', // Default Flutter font
                    fontSize: 14.0,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                  color: Colors.grey,
                ),
                onTap: () {
                  // Registration functionality goes here
                },
              ),
            ),
            SizedBox(height: 8),

            // Language Settings Container styled like Customer Service
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Language Settings",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  //langauge selection garne place
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text(
                      "English",
                      style: TextStyle(
                        fontFamily: 'Roboto', // Default Flutter font
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // Select English functionality
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // Customer Care Section
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Customer Care",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/icons/contact.png', // Replace with your actual app icon path
                      width: 28,
                      height: 28,
                    ),
                    title: Text(
                      "Contact Us",
                      style: TextStyle(
                        fontFamily: 'Roboto', // Default Flutter font
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // Add functionality here
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),

            // Feedbacl tile
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/icons/feedback.png', // Replace with your actual app icon path
                  width: 28,
                  height: 28,
                ),
                title: Text(
                  "Feedback",
                  style: TextStyle(
                    fontFamily: 'Roboto', // Default Flutter font
                    fontSize: 14.0,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                  color: Colors.grey,
                ),
                onTap: () {
                  // feedback goes here
                },
              ),
            ),
            SizedBox(height: 8),

            // Legal and Policies Section Container
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Legal and Policies",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/icons/Policies.png', // Replace with your actual app icon path
                      width: 28,
                      height: 28,
                    ),
                    title: Text(
                      "Policies",
                      style: TextStyle(
                        fontFamily: 'Roboto', // Default Flutter font
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // Add navigation or functionality here
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      'assets/icons/terms.png', // Replace with your actual app icon path
                      width: 28,
                      height: 28,
                    ),
                    title: Text(
                      "Terms and Conditions",
                      style: TextStyle(
                        fontFamily: 'Roboto', // Default Flutter font
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // Add navigation or functionality here
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      'assets/icons/about.png', // Replace with your actual app icon path
                      width: 28,
                      height: 28,
                    ),
                    title: Text(
                      "About Jeevee",
                      style: TextStyle(
                        fontFamily: 'Roboto', // Default Flutter font
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // Add navigation or functionality here
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/jvimg.png', // Replace with your actual app icon path
                      width: 28,
                      height: 28,
                    ),
                    title: Text(
                      "About App",
                      style: TextStyle(
                        fontFamily: 'Roboto', // Default Flutter font
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // Add navigation or functionality here
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
