import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jeeveeapp/Authentication/signup.dart';
import 'package:jeeveeapp/Authentication/login.dart';
import 'package:jeeveeapp/SplashScreen/Home.dart';
import 'package:jeeveeapp/pages/my_account_tile.dart';
import 'package:jeeveeapp/pages/my_contact_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JeeVee App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      // home: ItahariMedicalApp(),
      routes: {
        '/signup': (context) => SignUpPage(), // Route for the SignUpPage
        '/login': (context) => LoginPage(), // Route for the LoginPage
        '/accountmain': (context) =>MyAccountTile(), // Route for the accounttitle
        '/contactpage': (context) =>MyContactPage(), // Route for the accounttitle
      },
    );
  }
}
