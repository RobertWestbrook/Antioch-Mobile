import 'package:flutter/material.dart';
import 'package:Antioch_App/shared/navigation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';

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
        backgroundColor: Colors.white,
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


// class MessageHandler extends StatefulWidget {
//   @override
//   _MessageHandlerState createState() => _MessageHandlerState();
// }

// class _MessageHandlerState extends State<MessageHandler> {
//   final Firestore _db = Firestore.instance;
//   final FirebaseMessaging _fcm = FirebaseMessaging();

//     @override
//       void initState() { 
//         super.initState(
//           _fcm.configure(
//             onMessage: (Map<String, dynamic> message) async{
//               print("onMessage: $message");
//             }
//           )
//         );
//       }

//     @override
//     Widget build(BuildContext context) {
//       return null;

//     }

// }
