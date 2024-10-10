import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  final String title;
  final String imagePath;
  final String datum;
  final String description;

  const CardDetails({
    super.key,
    required this.title,
    required this.imagePath,
    required this.datum,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
