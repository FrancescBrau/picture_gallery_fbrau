import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/bernat.png'),
            ),
            SizedBox(height: 12),
            Text(
              'Bernat Mas',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'State Official',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Bernat is a state official with a vocation for public service. He is also a lover of his country and that is why he shows us a route that covers the most beautiful corners of Catalonia. With him, we will travel through beautiful postcards; the seaside, innovative cities, villages with history and the sauvage high mountains. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 60, 59, 59),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
