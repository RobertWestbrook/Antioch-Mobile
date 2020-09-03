import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      color: Colors.blueAccent,
      title: 'Events',
      body: Center(
        child: Text('This is the place where you will find events.')
      ),
    );
  }
}