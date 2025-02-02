import 'package:flutter/material.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({super.key}); // ✅ Dodane super.key do konstruktora

  final List<String> sections = const ['Agenda', 'Speakers', 'Sponsors', 'Discount Coupons'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: sections.map((title) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFD69A2E), // Gold - Toastmasters Accent Color
            foregroundColor: Colors.black, // Czarny tekst dla lepszej czytelności
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Zaokrąglone krawędzie
            ),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
            elevation: 5, // Efekt podświetlenia
          ),
          onPressed: () {
            // TODO: Dodać logikę nawigacji dla każdego przycisku
          },
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      )).toList(),
    );
  }
}
