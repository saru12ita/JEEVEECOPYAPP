import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeeveeapp/JwelleryDetails/Containers/Jdescriptionlist.dart';
import 'package:jeeveeapp/JwelleryDetails/Containers/relatedProducts/Jrelatedproducts.dart';

class JProductdetails extends StatefulWidget {
  const JProductdetails({super.key});

  @override
  State<JProductdetails> createState() => _JProductdetailsState();
}

class _JProductdetailsState extends State<JProductdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product Details"),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            JProductdetails(),
            JProductdetails(),
            JDesc(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Related Products",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            JRelatedproducts()
          ],
        ),
      ),
    );
  }
}
