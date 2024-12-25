import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jeeveeapp/Authentication/signup.dart';
import 'package:jeeveeapp/Authentication/login.dart';
import 'package:jeeveeapp/SplashScreen/Home.dart';
import 'package:jeeveeapp/pages/my_about_page.dart';
import 'package:jeeveeapp/pages/my_account_tile.dart';
import 'package:jeeveeapp/pages/my_contact_page.dart';
import 'package:jeeveeapp/pages/my_feedback_page.dart';
import 'package:jeeveeapp/pages/my_policies_page.dart';
import 'package:jeeveeapp/pages/my_policy_shipping_page.dart';
import 'package:jeeveeapp/pages/my_refund_page.dart';
import 'package:jeeveeapp/pages/my_return_policy_page.dart';
import 'package:jeeveeapp/pages/my_terms_page.dart';

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
          theme: ThemeData(
          appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/signup': (context) => SignUpPage(), // Route for the SignUpPage
        '/login': (context) => LoginPage(), // Route for the LoginPage
        '/accountmain': (context) =>MyAccountTile(), // Route for the accounttitle
        '/contactpage': (context) =>MyContactPage(), // Route for the contactpage
        '/feedbackpage': (context) =>MyFeedbackPage(), // Route for the feedbackpage
        '/policiespage': (context) =>MyPoliciesPage(), // Route for the feedbackpage
        '/shippingpolicy': (context) =>MyPolicyShippingPage(), // Route for the policyshippingpage
        '/returnpolicy': (context) =>MyReturnPolicyPage(), // Route for the policyshippingpage
        '/refundpolicy': (context) =>MyRefundPage(), // Route for the refundpolicy page
        '/terms': (context) =>MyTermsPage(), // Route for the terms and condititons page
        '/aboutus': (context) =>MyAboutPage(), // Route for the my about us page
      },
    );
  }
}
