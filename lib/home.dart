import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            const Text(
              'Pizza Store App',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const Spacer(), // space between title and icons

            // Twitter
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '3');
              },
              child: Image.asset(
                'assets/images/twitter.png',
                fit: BoxFit.contain,
                height: 40,
              ),
            ),
            const SizedBox(width: 10.0),

            // Twitter
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '4');
              },
              child: Image.asset(
                'assets/images/facebook.png',
                fit: BoxFit.contain,
                height: 40,
              ),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Padding for the body
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),

                // Buttons
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute buttons evenly
                  children: [
                    _buildMenuButton(
                      context: context,
                      label: 'Vegetable Pizza',
                      route: '0',
                    ),
                    _buildMenuButton(
                      context: context,
                      label: 'Cheese Pizza',
                      route: '1',
                    ),
                    _buildMenuButton(
                      context: context,
                      label: 'Fries',
                      route: '2',
                    ),
                  ],
                ),
              ),


              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                    children: [
                      Image.asset(
                        'assets/images/meal.jpg',
                        height: MediaQuery.of(context).size.height * 0.6, // Fit to screen height
                        width: MediaQuery.of(context).size.width * 0.9, // Fit to screen width
                        fit: BoxFit.cover, // Fitting image properly
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        "Hi, I'm the Pizza Assistant, what can I help you order?",
                        style: TextStyle(
                          fontSize: 24.0, // Adjusted font size for better readability
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Helper Widget to Build Menu Buttons
  Widget _buildMenuButton({
    required BuildContext context,
    required String label,
    required String route,
  }) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        side: const BorderSide(color: Colors.red),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      ),
      child: FittedBox(
        child: Text(
          label,
          style: const TextStyle(fontSize: 18.0, color: Colors.orange),
          maxLines: 1, // Ensure single-line text
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

