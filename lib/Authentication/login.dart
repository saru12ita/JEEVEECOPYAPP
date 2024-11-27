/*
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  void _login() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      _showMessage("Please fill in all fields.");
      return;
    }

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      _showMessage("Login successful!");
    } catch (e) {
      _showMessage("Login failed: ${e.toString()}");
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _forgotPassword() {
    _showMessage("Forgot Password functionality coming soon.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate to the previous screen
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove shadow
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // App Logo
              SizedBox(height: 40),
              Image.asset(
                'assets/images/OIP.jpg', // Replace with your app logo
                height: 90,
              ),
              SizedBox(height: 16),
              // Illustration Image
              Image.asset(
                'assets/images/signup.jpg', // Replace with an illustration image
                height: 210,
              ),
              SizedBox(height: 24),
              // Email Field
              _buildTextField(
                controller: _emailController,
                label: "Email Address *",
                icon: Icons.email,
                obscureText: false,
              ),
              SizedBox(height: 16),
              // Password Field
              _buildTextField(
                controller: _passwordController,
                label: "Password *",
                icon: Icons.lock,
                obscureText: !_isPasswordVisible,
                toggleVisibility: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              SizedBox(height: 8),
              // Forgot Password Link
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: _forgotPassword,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 53, 53, 53),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              // Login Button
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(192, 231, 231, 231),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              // Sign Up Link
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, '/signup'); // Adjust as per your routes
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

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
    VoidCallback? toggleVisibility,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: obscureText
            ? IconButton(
                icon: Icon(
                  toggleVisibility != null && obscureText
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: toggleVisibility,
              )
            : Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}

*/

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'forgot_password.dart'; // Import your Forgot Password screen

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  void _login() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      _showMessage("Please fill in all fields.");
      return;
    }

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      _showMessage("Login successful!");
    } catch (e) {
      _showMessage("Login failed: ${e.toString()}");
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _forgotPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
    );
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
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Image.asset(
                'assets/images/OIP.jpg',
                height: 90,
              ),
              SizedBox(height: 16),
              Image.asset(
                'assets/images/signup.jpg',
                height: 210,
              ),
              SizedBox(height: 24),
              _buildTextField(
                controller: _emailController,
                label: "Email Address *",
                icon: Icons.email,
                obscureText: false,
              ),
              SizedBox(height: 16),
              _buildTextField(
                controller: _passwordController,
                label: "Password *",
                icon: Icons.lock,
                obscureText: !_isPasswordVisible,
                toggleVisibility: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: _forgotPassword,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 53, 53, 53),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(192, 136, 134, 134),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
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

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
    VoidCallback? toggleVisibility,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: obscureText
            ? IconButton(
                icon: Icon(
                  toggleVisibility != null && obscureText
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: toggleVisibility,
              )
            : Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
    );
  }
}
