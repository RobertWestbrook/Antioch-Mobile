import 'package:flutter/material.dart';
// import 'screens/screens.dart';
import 'package:Antioch_App/shared/navigation.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => NavBar(),
      },

      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
      ),
      
    );
  }
}

