import 'package:flutter/material.dart';
import '../../Cards/cards.dart';

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
              title: 'Barcelona',
              description: 'Sagrada Familia',
              imagePath: 'assets/images/safa.png',
            ),
            Cards(
              title: 'Costa Brava',
              description: "Tossa de Mar",
              imagePath: 'assets/images/costabrava.png',
            ),
            Cards(
              title: 'Montserrat',
              description: 'Abadia de la Mare de Déu de Montserrat',
              imagePath: 'assets/images/montserrat.png',
            ),
            Cards(
              title: "L'Empordà",
              description: 'Vila medieval de Peratallada',
              imagePath: 'assets/images/peratallada.png',
            ),
            Cards(
              title: "Alt Pirineu",
              description: "Aigüestortes i l'estany de Sant Maurici",
              imagePath: 'assets/images/aiguestortes.png',
            ),
            Cards(
              title: "Terres de l'Ebre",
              description: 'Deltebre',
              imagePath: 'assets/images/deltaebre.png',
            ),
          ],
        ),
      ),
    );
  }
}
