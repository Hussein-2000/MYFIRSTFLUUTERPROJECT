import 'package:flutter/material.dart';

class Vpizza extends StatelessWidget {
  const Vpizza({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Pizza Store App',
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centering the content
          children: [
            // Image that fits the screen with BoxFit.cover for scaling
            Image.asset(
              'assets/images/vpizza.jpg',
              height: screenHeight * 0.7, // Height 40% of screen height
              width: screenWidth * 0.97, // Full width of the screen
              fit: BoxFit.cover, // Ensures image covers the area without distortion
            ),
            const SizedBox(height: 20.0), // Adds some space between image and text
            const Text(
              "Vegetable Pizza",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

