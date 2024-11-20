import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jeeveeapp/Authentication/signup.dart';
import 'package:jeeveeapp/Authentication/login.dart'; // Make sure you import your LoginPage

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
      initialRoute: '/signup', // This can be the first route when app starts
      routes: {
        '/signup': (context) => SignUpPage(), // Route for the SignUpPage
        '/login': (context) => LoginPage(), // Route for the LoginPage
      },
    );
  }
}
