import 'package:flutter/material.dart';
import 'package:jeeveeapp/components/Search_textfield.dart';

class MyTermsPage extends StatelessWidget {
  const MyTermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms and Conditions",
        style: TextStyle(
          color: Colors.black,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed:(){ Navigator.pop(context);},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
           child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBarWithBarcode(
               onBarcodeTap: (){
                print("Barcode is tapped!");
               },
               onSearch: (value){
                print("Search input is $value");
               },
            ),
          ),
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
                        Text('Welcome to Jeevee ("Website/Mobile Application", Personal Health Record App or "we"). This Website/Mobile Application is owned and operated by Jeevee Health Private Limited (“Jeevee”), whose registered office is in Kathmandu, Nepal.',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      Text('The following are the Terms and Conditions, read together with the Privacy Policy, that govern your use of the application and services from Jeevee, and constitute a legally binding agreement, between you ("the Customer", the "User" or "the Caregiver") and Jeevee, a DDA registered company.',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 15.0),

                    Text('By visiting, viewing, accessing or otherwise using any of the services or information created, collected, compiled or submitted to Jeevee, you are deemed to have agreed to all the following Terms and Conditions of Sale/Service. So, before you use this Website/Mobile Application, please read these Terms & conditions carefully as you agree to be bound by them. If you do not accept these Terms and Conditions, please do not use this Website/Mobile Application.',
                    style: TextStyle(
                      fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    
                    Text('1.Creating an Acoount',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10.0),

                    Text('To use any features of the Website/Mobile Application (e.g., appointment, order prescription set reminder posting feedback/reviews, receiving Jeevee support), you must set up an account with Jeevee and provide certain information about yourself as prompted by the form, including, your name, gender, blood group, NMC No, name of degree, years of experience, email address, account password, mobile phone number and billing/shipping address. Our Privacy Policy protects all of your registration information.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text('Jeevee will not be liable for any loss or damages as a result of your failure to maintain the confidentiality of your account credentials. If you suspect any unauthorised use of your Jeevee account, you shall immediately notify us at: support@jeeveehealth.com.np',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Text('2.Privacy Policy',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10.0),

                    Text('2.1 Your personally identifiable information will be used in accordance with our Privacy Policy (kindly refer to “Privacy Policy”). To understand our practices, as to how we collect, use and disclose your personally identifiable information, please refer our Privacy Policy, which also governs your visit to Jeevee.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text('2.2 We understand the privacy of all information you provide is of a primary importance. This is why we do everything possible to use it carefully and sensibly. This information is never shared with other companies or person or third party service providers.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                    
                    Text('3.Security Policy',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10.0),

                    Text('All your transactions are 100% secure when you record your medical information, prescription or place an order online at Jeevee. Your personal information is encrypted by using 256-bit Secure Sockets Layer (SSL) encryption technology before being sent over the Internet, which ensures the privacy and high level of security of all your information.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),

                  const SizedBox(height: 20.0),
                    
                    Text('4.Use of Information on the Website/Mobile Application',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10.0),

                    Text('The information on this Website/Mobile Application is not a substitute for professional medical advice or treatment for specific medical conditions. It is important that you do not make medical decisions, and you should always seek the advice of your physician or other qualified healthcare professional with any questions you may have about your medical condition.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),

                  const SizedBox(height: 20.0),
                    
                    Text('5.Disclaimer of Warranties and Limitation of Liability',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10.0),

                    Text('We disclaim responsibility for any harm to persons resulting from any instructions or Products referred to in the Website/Mobile Application Jeevee is not associated with any manufacturer of medicines or other products on the Website/Mobile Application. We do not warrant that the Website/Mobile Application, or its content will meet your requirements.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                    
                    Text('6.Website/Mobile Application Availability',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10.0),

                    Text('We take all reasonable care to ensure the availability of the Jeevee Website/Mobile Application 24 hours every day, 365 days per year. However, the Website/Mobile Application may become temporarily unavailable due to maintenance, server or other technical issues, or for reasons beyond our control. Jeevee does not warrant uninterrupted access to this Website/Mobile Application or any linked Website/Mobile Application. However, we may, but shall not be obliged to, issue a notice when we know of scheduled maintenance of our Website/Mobile Application.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),

                                    const SizedBox(height: 20.0),
                    
                    Text('7.Links to third-party Website/Mobile Applications',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10.0),

                    Text('We provide link to third-party Website/Mobile Applications, our online payment service partners, which process your Net Banking and Credit/Debit Card payments, respectively. We are not responsible for the availability or proper functioning of such linked pages or sites, and we will not be held responsible for any loss or inconvenience encountered as a result of using such Website/Mobile Application link.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),

                  const SizedBox(height: 15.0),

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