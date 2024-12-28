import 'package:flutter/material.dart';

class MyReturnPolicyPage extends StatelessWidget {
  const MyReturnPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Return Shipping",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          color: const Color.fromARGB(255, 246, 243, 243),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [

                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "We do our best to ensure that the products you order are delivered according to your specifications. However if should you receive an incomplete order, damaged or incorrect product(s), please notify Jeevee Customer Support immediately or within 3 working days of receiving the products, to ensure prompt resolution. Please note that Jeevee will not accept liability for such delivery issues if you fail to notify us within 3 working days of receipt. However, in the rare event that your order is unsatisfactory, we are happy to accept returns for orders, if:",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BulletPoint(
                              text:
                                  "The product is unused and in its original packaging."),
                          BulletPoint(
                              text:
                                  "The return request is submitted within the return window."),
                          BulletPoint(
                              text:
                                  "You provide proof of purchase (e.g., invoice or receipt)."),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),

                Container(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Color(0xFFD9D6F0), // Set the background color here
                        padding: EdgeInsets.all(8.0), // Optional padding inside the text background
                        child: Text(
                          'Note: If you notice the package is damaged at the time of delivery, please do not accept the order. Kindly check your order carefully at the time of receiving your order. Replacement for the damaged item(s) is subject to availability in stock. In absence of a replacement, a refund will be issued.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20.0),

                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Returns are subject to the following conditions:",
                            style: 
                              TextStyle(
                                fontSize: 14.0,
                              )
                            ),
                            const SizedBox(height: 10.0),

                             Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BulletPoint(
                              text:
                                  "Items being returned should only be in their original manufacturer's packaging i.e. with labels, bar-code."),
                          BulletPoint(
                              text:
                                  "Only fully unused strips/bottles can be returned"),
                          BulletPoint(
                              text:
                                  "Batch number of the product being returned should match as mentioned on the sales invoice"),
                         BulletPoint(
                              text:
                                  "Second time request against the same product/order."),
                            ],
                          ),
                          
                        ],
                      ),   
                    ),
                    const SizedBox(height: 15.0),
                    
                    Text("Return Policy Exceptions:",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 15.0),

                    Text("Please note that we are unable to offer replacements or exchanges for the following product categories: Injections, Health Monitor & Equipment’s and Ortho Support. Also, Jeevee reserves the right to refuse returns (or refunds) for certain products, as marked in the respective product pages as 'Note: This item cannot be returned for a refund or exchange.",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                    ),

                    const SizedBox(height: 10.0),

                    Center(
                      child: Text("You have to visit our city office to return any product.",
                      style: TextStyle(
                        fontSize: 14.0,  
                      ),
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
                    
                    const SizedBox(height: 15.0)
                    
                    
                    
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
