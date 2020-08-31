import 'package:flutter/material.dart';
import 'screens/screens.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/': (context) => LoginScreen(),
        '/': (context) => HomeScreen()
      },


      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
      ),
    );
  }
}

