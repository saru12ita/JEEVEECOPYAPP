import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController =
      TextEditingController(); // Updated from mobile to email
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _resetPassword() async {
    if (_emailController.text.isEmpty) {
      _showMessage("Please enter your email.");
      return;
    }

    try {
      await _auth.sendPasswordResetEmail(email: _emailController.text.trim());
      _showMessage(
          "Password reset link sent to your email. Please check your inbox.");
    } catch (e) {
      _showMessage("Failed to send password reset email: ${e.toString()}");
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0, // No shadow
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              // First Image (Logo or Header)
              Image.asset(
                'assets/images/OIP.jpg', // Replace with your image
                height: 90,
              ),
              SizedBox(height: 16),
              // Second Image (Illustration)
              Image.asset(
                'assets/images/signup.jpg', // Replace with your image
                height: 210,
              ),
              SizedBox(height: 24),
              // Forgot Password Text
              Text(
                "Forgot Your Password?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              // Input Field for Email
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter your Email *", // Updated label
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              SizedBox(height: 24),
              // Proceed Button
              ElevatedButton(
                onPressed: _resetPassword,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(192, 136, 134, 134),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text(
                  "Proceed",
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              SizedBox(height: 16),
              // Sign In Button
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  "SignIn",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(221, 49, 48, 48),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Sign Up Link
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup'); // Adjust your route
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an Account? ",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 212, 52, 188),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
