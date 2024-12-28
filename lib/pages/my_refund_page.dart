import 'package:flutter/material.dart';

class MyRefundPage extends StatelessWidget {
  const MyRefundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refund Policy",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
           icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          color:const Color.fromARGB(255, 246, 243, 243),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("At Jeevee, we do our best to ensure that you are completely satisfied with our products. And we are happy to issue a full refund based on the conditions listed below.",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                      ),
                      const SizedBox(height: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BulletPoint(
                              text:
                                  "Full Refund Possible if you received a defective item."),
                          BulletPoint(
                              text:
                                  "The ordered item(s) is lost or damaged during transit."),
                          BulletPoint(
                              text:
                                  "The ordered item(s) is past its expiry date."),
                            ],
                       ),
                       const SizedBox(height: 10.0),
                       Container(
                        color: Color(0xFFD9D6F0), // Set the background color here
                        padding: EdgeInsets.all(8.0), // Optional padding inside the text background
                        child: Text(
                          "Note: Mode of refund may vary depending on circumstances. If the mode of refund is by Credit/Debit Card or Net Banking or cash payment, please allow 7 to 10 working days for the credit to appear in your account. While we regret any inconvenience caused by this time frame, it is the bank's policy that delays the refund timing and we have no control over that.",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15.0),
                      Text("How to Request a Refund",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),

                    Text("To request a refund, simply email your order details, including the reason why you're requesting a refund. To collect the refund and to return you have to visit our city office. We take customer feedback very seriously and use it to constantly improve our quality of service.",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),

                    Text("If you have any queries",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    const SizedBox(height: 10.0),
                    Text("Hotline number:",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                    ),

                    const SizedBox(height: 5.0),
                    Text("(O) +977-1-190900",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    ),

                    const SizedBox(height: 5.0),
                    Text("(M) +977-9800977568",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    ),

                    const SizedBox(height: 8.0),
                     Text("E-mail:",
                     style: TextStyle(
                      fontSize: 14.0,
                    ),
                    ),
                    
                    Text("support@jeeveehealth.com.np",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                    ),
                    
                    const SizedBox(height: 15.0),
                    ],
                  ),
                ),
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//for bullet point
class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 6.0, right: 8.0),
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
            color: Colors.purple,
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}