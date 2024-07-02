import 'package:flutter/material.dart';
import 'package:foodie/view/Widgets/buttons.dart';  // Adjust import path if necessary
import 'package:foodie/view/pages/deleverypartner_page.dart';
import 'package:foodie/view/pages/fooddelivery_page.dart';
import 'package:foodie/view/pages/partner_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.yellow[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              text: 'P a r t n e r',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerPage()));
              },
            ),
            const SizedBox(height: 16,),
             MyButton(
              text: 'D e l i v e r y P a r t n e r',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryPartnerPage()));
              },
            ),
             const SizedBox(height: 16,),
             MyButton(
              text: 'F o o d D e l i v e r y',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDeliveryPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
