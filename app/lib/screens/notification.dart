import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      color: Colors.lightBlue,
      title: Text('Messages'),
      body: Center(
        child: RaisedButton(
          color: Colors.blueGrey.withOpacity(.6),
          elevation: 5,
          padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          onPressed: (){launchURL('https://www.antiochorlando.com/events');},
          child: Text('Notifications',
            textScaleFactor: 2,
          ),
        )
      ),
    );
  }
}