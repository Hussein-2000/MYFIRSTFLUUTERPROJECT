import 'package:flutter/material.dart';

class Fries extends StatelessWidget {
  const Fries({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Pizza Store App',
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // Center the title in the AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            // Dynamically scale the image to fit the screen
            Image.asset(
              'assets/images/fpizza.jpg',
              height: screenHeight * 0.7, // 40% of the screen height
              width: screenWidth * 0.97, // 90% of the screen width
              fit: BoxFit.contain, // Scale image to fit within dimensions
            ),
            const SizedBox(height: 20.0), // Space between image and text
            const Text(
              "Fries",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
