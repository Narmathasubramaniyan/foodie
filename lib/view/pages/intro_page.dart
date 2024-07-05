import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final poweredByTextStyle = GoogleFonts.alice(
      fontSize: 14,
      color: Colors.grey,
    );

    return Scaffold(
      backgroundColor: Colors.yellow[400],
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/homepage');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.network(
                  'https://th.bing.com/th/id/R.a959ce9211765aae57111ea75a1d8ba2?rik=b7c4VlFKhP24PQ&riu=http%3a%2f%2fclipart-library.com%2fimages_k%2ftransparent-food-clipart%2ftransparent-food-clipart-10.png&ehk=h6J2VFGpq1VH%2fLgtQ%2fAbt2LWfl1Sz2bORmWjqD9s8dM%3d&risl=&pid=ImgRaw&r=0',
                  height: 300,
                ),
              ),
              //title
              Text(
                'F O O D I E',
                style: GoogleFonts.alice(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
      // Add this to the bottom of the Scaffold
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.transparent,
        child: Text(
          'Powered By : SOFTNOVA',
          style: poweredByTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}