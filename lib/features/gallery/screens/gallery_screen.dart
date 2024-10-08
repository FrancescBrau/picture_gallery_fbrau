import 'package:flutter/material.dart';
import 'package:picture_gallery_fbrau/features/gallery/Cards/cards.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
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
                'description':
                    "Barcelona is known for its art and architecture. Overlooking the Mediterranean Sea, and famous for Gaudí and other Art Nouveau architecture, Barcelona is one of Europe's trendiest cities. It's a hub of new trends in the world of culture, fashion and cuisine. It combines the creativity of its artists and designers with respect and care for local traditions.",
              },
              {
                'title': 'Montserrat',
                'imagePath': 'assets/images/montserrat.png',
                'description':
                    "The basilica itself, the atrium, the chapels within the basilica and the Black Madonna (see above) are all of interest from an architectural, spiritual and historical perspective. The basilica at Montserrat is also the place where you will be able to attend masses and watch the Montserrat choir.",
              },
              {
                'title': 'Costa Brava',
                'imagePath': 'assets/images/costabrava.png',
                'description':
                    "Costa Brava is a paradise for water enthusiasts, hiking and cycling lovers, and travellers looking to indulge in outstanding cuisine and culture. So, whether you're looking for an action-packed adventure or a more relaxed trip, the Costa Brava has something for you!",
              },
              {
                'title': 'Peratallada',
                'imagePath': 'assets/images/peratallada.png',
                'description':
                    "In the middle of the heart of Empordà and just a few kilometres from the best coves and beaches of the Costa Brava, the village of Peratallada is located in the province of Girona, halfway between Barcelona and the French border.",
              },
              {
                'title': 'Aigüestortes',
                'imagePath': 'assets/images/aiguestortes.png',
                'description':
                    "The high-mountain landscape has an impressive relief and a rich variety of fauna and vegetation: fir and mountain pine forests, screes and alpine meadows, peaks over 3000m high, and fauna including chamois, marmots, wood grouse, and bearded vultures.",
              },
              {
                'title': "Penedès",
                'imagePath': 'assets/images/penedes.png',
                'description':
                    "A walk through the taste between nature, history and the stoves of our region. Pamper the palate with a sample of the best foods and broths of the Gran Penedés in a traditional environment and cooking together with a renowned cheff of the know-how of our territory.",
              },
              {
                'title': "Delta de l'Ebre",
                'imagePath': 'assets/images/deltaebre.png',
                'description':
                    "El Delta de l'Ebre, with a surface area of 123 square miles, plays host to the largest aquatic habitat in Catalonia, as well as a rich variety of atmospheres distinguished by the convergence of marine and mainland environments.",
              },
            ];

            return Cards(
              title: cardsData[index]['title']!,
              imagePath: cardsData[index]['imagePath']!,
              description: cardsData[index]['description']!,
            );
          },
        ),
      ),
    );
  }
}
