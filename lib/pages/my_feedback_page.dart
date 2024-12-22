import 'package:flutter/material.dart';
import 'package:jeeveeapp/components/Search_textfield.dart';
import 'package:jeeveeapp/components/my_button.dart';

class MyFeedbackPage extends StatelessWidget {
  const MyFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Feedback",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60), // height of the search bar
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchBarWithBarcode(
              onBarcodeTap: () {
                print("Barcode is tapped !");
              },
              onSearch: (value) {
                print("Search input :$value");
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0), // You container ko bhaira ko lagi padding ho
        child: Container(
          color: const Color(0xFFF2F2F2), // Container ko color
          child: Padding(
            padding: EdgeInsets.all(12.0), // Container bhitra ko padding ho
            child: ListView(
              children: [
                // Question title
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "How can we help you better?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                // Second texts
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "If you have any suggestions regarding Jeevee app, let us know in the field below.",
                        style: TextStyle(fontSize: 13), // Optional styling
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25.0),

                // TextField goes here
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Write your feedback message here...",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade600, // Set the hint text color to grey.shade600
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400, // Slightly grey color for the default border
                          width: 0.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400, // Grey color for the enabled border
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade600, // Slightly darker grey for the focused border
                          width: 0.5,
                        ),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF2F2F2),
                    ),
                    maxLines: 8, // Multiline text field
                  ),

                  //button goes here
                  const SizedBox(height: 20.0),
                  MyButton(
                    onTap: (){},
                    text: "Send Feedback",
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
