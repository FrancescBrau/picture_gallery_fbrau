import 'package:flutter/material.dart';
import 'features/screens/gallery_screen.dart';
import 'features/screens/profile_screen.dart';

void main() {
  runApp(const CataloniaGalleryApp());
}

class CataloniaGalleryApp extends StatelessWidget {
  const CataloniaGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalonia Gallery App',
      theme: ThemeData(
        fontFamily: 'LibreBaskerville',
        primarySwatch: Colors.blue,
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
        title: const Text('Visit Catalonia'),
        backgroundColor: const Color.fromARGB(0, 155, 205, 236),
      ),
      body: screensApp[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.photo), label: 'Gallery'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
