import 'package:flutter/material.dart';
import 'package:jeeveeapp/SplashScreen/Drawer.dart';

class MyAccountTile extends StatelessWidget {
  const MyAccountTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: Container(
        color: Color(0xFFF2F2F2),
        child: ListView(
          padding: const EdgeInsets.all(12.0), // Adds padding around the list
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
                  // Navigate to the Login page using named route
                  Navigator.pushNamed(context, '/login');
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
                  // Navigate to the Login page using named route
                  Navigator.pushNamed(context, '/signup');
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
                      // Navigate to the contact page using named route
                      Navigator.pushNamed(context, '/contactpage');
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
                      'assets/images/OIP.jpg', // Replace with your actual app icon path
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
