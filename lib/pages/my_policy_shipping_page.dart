import 'package:flutter/material.dart';

class MyPolicyShippingPage extends StatelessWidget {
  const MyPolicyShippingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Centralized Text Styles
    const TextStyle headingStyle = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    );
    const TextStyle bodyStyle = TextStyle(
      fontSize: 14.0,
    );
    const TextStyle linkStyle = TextStyle(
      fontSize: 14.0,
      color: Colors.blue,
    );

    // Section Data
    final List<Map<String, dynamic>> sections = [
      {
        "title": "1. Delivery Charges",
        "content":
            "Delivery charges will be based on the shipping address of the customer.",
      },
      {
        "title": "2. COD Charges Policy",
        "content": [
          "Cash on Delivery (COD) is a payment method by which you can pay for your ordered item(s) in cash when Jeevee delivers your order at your shipping/delivery address.",
          "Don't own a credit/debit card? Or don't wish to pay online? Rather than making any advance online payment, Jeevee COD option gives you the flexibility to pay the complete order amount on delivery.",
          "COD orders are not charged an additional fee for any order value.",
          "Only Nepalese Rupee is accepted in the COD payment method.",
          "Payment through credit/debit cards, DD, cheque, or any other means is NOT accepted in the COD payment. COD is strictly a cash-only payment method.",
        ],
      },
      {
        "title": "3. What is the estimated delivery time?",
        "content": [
          "Order confirmation happens for online payments once payment authorization and verification is obtained. For COD, order is confirmed once our customer service representative verifies your order and shipping address.",
          "We will inform you once the order is confirmed and when the items are shipped with an update on the approximate delivery time. You will get SMS/notification with an update on the status of your order.",
          "For all in-stock items, the delivery is within a maximum of 24 hours of the order being confirmed.",
          "We make our best efforts to ship each item in your order within 24 hours of the order. However, in some cases, we may take longer, up to 7 working days, to ship the order as we may have to procure it from some other stores or our suppliers.",
          "In the unlikely event that we are not able to ship your order completely within 7 days, we shall cancel the remaining unshipped part of the order and send you an email. Your payment against the unshipped part of the order shall be refunded in the manner you made the payment.",
        ],
      },
      {
        "title": "4. International Delivery",
        "content": "International delivery is not available currently.",
      },
      {
        "title": "If you have any queries",
        "content": [
          "(O) +977-1-5970680",
          "(M) +977 98011-65960",
          "Email: support@jeeveehealth.com.np",
        ],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Policy Shipping",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: sections.length,
          itemBuilder: (context, index) {
            final section = sections[index];
            final title = section["title"];
            final content = section["content"];

            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section Title
                  if (title != null)
                    Text(
                      title,
                      style: headingStyle,
                    ),
                  const SizedBox(height: 8.0),

                  // Section Content
                  if (content is String)
                    Text(
                      content,
                      style: bodyStyle,
                    )
                  else if (content is List)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(content.length, (i) {
                        final text = content[i];
                        final style = text.startsWith("Email:") || text.startsWith("(")
                            ? linkStyle
                            : bodyStyle;

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            text,
                            style: style,
                          ),
                        );
                      }),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
