import 'package:flutter/material.dart';
import '../logic/profile_logic.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileLogic = ProfileLogic();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(profileLogic.getProfileImage()),
              ),
              const SizedBox(height: 12),
              Text(
                profileLogic.getProfileName(),
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                profileLogic.getProfileTitle(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                profileLogic.getProfileDescription(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 60, 59, 59),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
