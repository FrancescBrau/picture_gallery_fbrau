import 'package:flutter/material.dart';
import 'package:picture_gallery_fbrau/features/gallery/widgets/cards.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          itemCount: 7,
          itemBuilder: (context, index) {
            final cardsData = [
              {
                'title': 'Bunter Basketball',
                'imagePath': 'assets/images/basketball_1.jpeg',
                'description':
                    "Ein Basketballplatz ist ein rechteckiger Bereich, der zum Basketballspielen entworfen wurde. Er hat Standardmaße von 28 Metern Länge und 15 Metern Breite. An den beiden Enden befinden sich Körbe in einer Höhe von 3,05 Metern. Der Boden besteht in der Regel aus Holz und ist mit Linien markiert, die wichtige Zonen abgrenzen, wie die Drei-Punkte-Linie und die Freiwurflinie.",
              },
              {
                'title': 'Andrenalin pur!',
                'imagePath': 'assets/images/ski.jpeg',
                'description':
                    "Skifahren ist ein Sport, der auf Schnee, meist in den Bergen, ausgeübt wird. Die Skifahrer fahren Hänge hinunter, indem sie lange, schmale Skier verwenden, die an ihren Stiefeln befestigt sind. Sie benutzen auch Stöcke, um das Gleichgewicht zu halten und ihre Bewegungen zu steuern. Die Skipisten sind vorbereitet und abgegrenzt, um die Sicherheit der Skifahrer zu gewährleisten.",
              },
              {
                'title': 'Achtung Kurve',
                'imagePath': 'assets/images/bike.jpeg',
                'description':
                    "Dieser Sport erfordert Ausdauer, Kraft und technisches Können, um verschiedene Terrains und Wetterbedingungen zu bewältigen. Es gibt verschiedene Disziplinen wie Straßenrennen, Mountainbiking und Bahnradfahren. Besonders bei Straßenrennen spielen Taktik und Teamarbeit eine große Rolle, während Mountainbiking eine größere technische Präzision und Körperbeherrschung erfordert.",
              },
              {
                'title': 'Runners High',
                'imagePath': 'assets/images/running.jpeg',
                'description':
                    "In the middle of the heart of Empordà and just a few kilometres from the best coves and beaches of the Costa Brava, the village of Peratallada is located in the province of Girona, halfway between Barcelona and the French border.",
              },
              {
                'title': 'Swish',
                'imagePath': 'assets/images/basketball_2.jpeg',
                'description':
                    "Laufen, auch Running genannt, ist eine einfache und beliebte Sportart, bei der man auf verschiedenen Strecken und Terrains läuft. Es erfordert wenig Ausrüstung – meist nur geeignete Laufschuhe – und kann sowohl drinnen auf Laufbändern als auch draußen in der Natur oder auf Straßen ausgeübt werden. ",
              },
              {
                'title': "Ball Game",
                'imagePath': 'assets/images/tennis_1.jpeg',
                'description':
                    "Basketball ist ein schneller und dynamischer Sport, der auf einem rechteckigen Spielfeld gespielt wird. Zwei Teams mit jeweils fünf Spielern versuchen, den Ball in den Korb des Gegners zu werfen, um Punkte zu erzielen.",
              },
              {
                'title': "Encara Messi",
                'imagePath': 'assets/images/soccer.jpeg',
                'description':
                    "Fußball ist in Deutschland eine der beliebtesten Sportarten. Jedes Wochenende versammeln sich Millionen von Fans in den Stadien, um ihre Lieblingsmannschaften anzufeuern. Die Bundesliga, die höchste Fußballliga des Landes, ist bekannt für ihre spannenden Spiele und talentierten Spieler. Die deutschen Nationalmannschaft hat in der Vergangenheit große Erfolge gefeiert, darunter den Gewinn der FIFA-Weltmeisterschaft viermal (1954, 1974, 1990, 2014). Die leidenschaftlichen Fans und die beeindruckende Atmosphäre in den Stadien machen Fußball in Deutschland zu einem einzigartigen Erlebnis.",
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
