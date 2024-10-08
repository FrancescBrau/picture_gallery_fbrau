import 'package:flutter/material.dart';
import 'features/gallery/screens/gallery_screen.dart';
import 'features/profile/screens/profile_screen.dart';

void main() {
  runApp(const KayaGalleryApp());
}

class KayaGalleryApp extends StatelessWidget {
  const KayaGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery App',
      theme: ThemeData(
        fontFamily: 'LibreBaskerville',
        scaffoldBackgroundColor: const Color.fromARGB(255, 228, 228, 228),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screensApp = [
    const GalleryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MyGallery',
          style: TextStyle(color: Colors.white70),
        ),
        backgroundColor: const Color.fromARGB(255, 43, 26, 15),
      ),
      body: screensApp[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        backgroundColor: const Color.fromARGB(255, 230, 221, 215),
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.photo,
                color: Colors.brown,
              ),
              label: 'Gallery'),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Colors.brown,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
