import 'package:flutter/material.dart';
import 'package:picture_gallery_fbrau/features/gallery/logic/gallery_logic.dart';
import 'package:picture_gallery_fbrau/features/widgets/cards.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final galleryLogic = GalleryLogic();
    final cardsData = galleryLogic.getCardsData();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gallery',
          style: TextStyle(color: Color.fromARGB(179, 55, 52, 52)),
        ),
        backgroundColor: const Color.fromARGB(255, 204, 177, 160),
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
          itemCount: cardsData.length,
          itemBuilder: (context, index) {
            return Cards(
              title: cardsData[index]['title']!,
              imagePath: cardsData[index]['imagePath']!,
              datum: cardsData[index]['datum']!,
              description: cardsData[index]['description']!,
            );
          },
        ),
      ),
    );
  }
}
