import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      color: Colors.lightBlue,
      title: 'Messages',
      body: Center(
        child: Text('This is the place where you will find alerts.')
      ),
    );
  }
}