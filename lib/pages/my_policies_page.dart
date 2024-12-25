import 'package:flutter/material.dart';
import 'package:jeeveeapp/components/Search_textfield.dart';

class MyPoliciesPage extends StatelessWidget {
  const MyPoliciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Policies",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBarWithBarcode(
              onBarcodeTap: () {
                print("Barcode is tapped");
              },
              onSearch: (value) {
                print("Search input is $value");
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          color: const Color(0xFFF2F2F2),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [
                // Shipping policy
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/shippingpolicy');
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/policies/Shipping.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Shipping policy",
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 14.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7.0),
                const Divider(),

                // Return policy
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/returnpolicy');
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/policies/Return.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Return policy",
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 14.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7.0),
                const Divider(),

                // Refund policy
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/refundpolicy');
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/policies/Refund.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Refund policy",
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 14.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 7.0),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
