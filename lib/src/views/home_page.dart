import 'package:flutter/material.dart';
import 'navigation_buttons.dart';
import 'bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUILD THE EMPIRE', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF004165),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            'assets/images/built_the_empire_logo.jpg',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 10),
          const NavigationButtons(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
