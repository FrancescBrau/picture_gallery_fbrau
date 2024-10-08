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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Cards(
              title: 'Card 1',
              description: 'Description of Card 1.',
              imagePath: 'assets/images/cat.png',
            ),
            Cards(
              title: 'Card 2',
              description: 'Description of Card 2.',
              imagePath: 'assets/images/cat.png',
            ),
            Cards(
              title: 'Card 3',
              description: 'Description of Card 3.',
              imagePath: 'assets/images/cat.png',
            ),
            Cards(
              title: 'Card 4',
              description: 'Description of Card 4.',
              imagePath: 'assets/images/cat.png',
            ),
            Cards(
              title: 'Card 5',
              description: 'Description of Card 5.',
              imagePath: 'assets/images/cat.png',
            ),
            Cards(
              title: 'Card 6',
              description: 'Description of Card 6.',
              imagePath: 'assets/images/cat.png',
            ),
          ],
        ),
      ),
    );
  }
}
