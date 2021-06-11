import 'package:amazon_prime_music/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PrimeMusicApp());
}

class PrimeMusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeScreen(),
      theme: ThemeData.dark().copyWith(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: Colors.lightBlueAccent,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          ),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          selectedItemColor: Colors.lightBlueAccent,
        ),
        iconTheme: IconThemeData(
          color: Colors.blue[200],
        ),
      ),
      darkTheme: ThemeData.dark(),
    );
  }
}
