import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Serve extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Serve',
      image: 'assets/images/heart.png',
      spot: HomeCardURL(
              image: 'assets/images/service2.JPG',
              text: 'Sunday \nService',
              url: 'https://www.antiochorlando.com/sunday-service',
              height: MediaQuery.of(context).size.height /2.5,
              width: MediaQuery.of(context).size.width,
              fitStyle: BoxFit.cover,
              align: Alignment.bottomRight,
              textSize: 4,
          ),
      child: Column(
        children: [
          
          HomeCardURL(
            image: 'assets/images/serve.JPG',
            text: 'Want To Serve?',
            url: 'https://www.antiochorlando.com/Sunday-service',
              height: MediaQuery.of(context).size.height /4,
              width: MediaQuery.of(context).size.width /1.4,
            fitStyle: BoxFit.cover,
          )
        ],)
    );
  }
}
