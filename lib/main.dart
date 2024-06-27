import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(GrooveFusionApp());
}

class GrooveFusionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrooveFusion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: Colors.purpleAccent,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Arial',
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textTheme: TextTheme(
          headline6:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
