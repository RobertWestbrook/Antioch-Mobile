import 'package:flutter/material.dart';
// import 'screens/screens.dart';
import 'package:Antioch_App/shared/navigation.dart';
import 'package:flutter/services.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
      ]);

    return MaterialApp(
      routes: {
        '/': (context) => NavBar(),
      },

      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey
      ),
      
    );
  }
}

