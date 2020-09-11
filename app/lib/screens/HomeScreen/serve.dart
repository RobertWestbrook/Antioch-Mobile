import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Serve extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Serve',
      image: 'assets/images/heart.png',
      spot: SpotCard(
              image: 'assets/images/service2.JPG',
              text: 'Sunday \nService',
              url: 'https://www.antiochorlando.com/sunday-service',
              fitStyle: BoxFit.cover,
              textSize: 4,
          ),
      child: Column(
        children: [
          
          HomeCardURL(
            image: 'assets/images/serve.JPG',
            text: 'Want To Serve?',
            url: 'https://www.antiochorlando.com/Sunday-service',
            fitStyle: BoxFit.cover,
          )
        ],)
    );
  }
}
