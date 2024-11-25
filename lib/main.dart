import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jeeveeapp/Authentication/signup.dart';
import 'package:jeeveeapp/Authentication/login.dart';
import 'package:jeeveeapp/SplashScreen/Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JeeVee App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      // home: SignUpPage(),
      home: HomeScreen(),
      routes: {
        '/signup': (context) => SignUpPage(), // Route for the SignUpPage
        '/login': (context) => LoginPage(), // Route for the LoginPage
      },
    );
  }
}
