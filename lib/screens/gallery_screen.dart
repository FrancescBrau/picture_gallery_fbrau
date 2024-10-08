import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Aquí va tu carta de prueba
            Card(
              elevation: 5, // Sombra de la carta
              margin: const EdgeInsets.all(10), // Espacio alrededor de la carta
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Imagen en la parte superior de la carta
                  Image.asset(
                    'assets/bernat.png', // Cambia esto si tienes diferentes imágenes
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Title of the Card',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Description of the card goes here. This is where you can provide more information about the content.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),

            // Repite la carta aquí para las siguientes cartas
            Card(
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/bernat.png', // Cambia esto si tienes diferentes imágenes
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Title of the Second Card',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Description of the second card goes here.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            // Agrega más cartas aquí...
          ],
        ),
      ),
    );
  }
}
