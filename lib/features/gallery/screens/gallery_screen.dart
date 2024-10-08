import 'package:flutter/material.dart';
import '../Cards/cards.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover our secrets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 3 / 4,
          ),
          itemCount: 7,
          itemBuilder: (context, index) {
            final cardsData = [
              {
                'title': 'Barcelona',
                'imagePath': 'assets/images/safa.png',
              },
              {
                'title': 'Costa Brava',
                'imagePath': 'assets/images/costabrava.png',
              },
              {
                'title': 'Pirineu',
                'imagePath': 'assets/images/aiguestortes.png',
              },
              {
                'title': 'Montserrat',
                'imagePath': 'assets/images/montserrat.png',
              },
              {
                'title': 'Empordà',
                'imagePath': 'assets/images/peratallada.png',
              },
              {
                'title': 'Penedès',
                'imagePath': 'assets/images/penedes.png',
              },
              {
                'title': 'Deltebre',
                'imagePath': 'assets/images/deltaebre.png',
              },
            ];

            return Cards(
              title: cardsData[index]['title']!,
              imagePath: cardsData[index]['imagePath']!,
            );
          },
        ),
      ),
    );
  }
}
