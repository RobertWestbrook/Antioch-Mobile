import 'package:flutter/material.dart';
import 'package:Antioch_App/shared/navigation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primarySwatch: Colors.blueGrey,
        primaryColor: Color.fromRGBO(35, 35, 35, 1),
        textTheme: GoogleFonts.montserratTextTheme(
          TextTheme(
            bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),
            bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),
            subtitle1: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),

          )
          )

        )
      
    );
  }
}

