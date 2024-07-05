import 'package:flutter/material.dart';
import 'package:foodie/view/pages/deleverypartner_page.dart';
import 'package:foodie/view/pages/fooddelivery_page.dart';
import 'package:foodie/view/pages/foodiepartner.dart';
import 'package:foodie/view/pages/home.dart';
import 'package:foodie/view/pages/intro_page.dart';
import 'package:foodie/view/pages/partner_page.dart';
import 'package:foodie/view/pages/restaurantdetails.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie',
      initialRoute: '/intropage',
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/homepage': (context) =>  HomePage(),
        '/partnerpage' : (context) => const PartnerPage(),
        '/fooddeliverypage' : (context) => const FoodDeliveryPage(),
        '/deliverypartner' : (context) => const DeliveryPartnerPage(),
        '/foodiepartnerpage' : (context) => const Foodie(),
        '/restaurantdetails' : (context) => const Restaurantdetails(),
      },
    );
  }
}