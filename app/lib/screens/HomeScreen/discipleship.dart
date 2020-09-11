import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Discipleship extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Discipleship',
      image: 'assets/images/anvil.png',
      spot: HomeCardURL(
              image: 'assets/images/ads.jpeg',
              text: 'Antioch\nDiscipleship\nSchool',
              url: 'https://www.antiochorlando.com/discipleship-school',
              height: MediaQuery.of(context).size.height /2.5,
              width: MediaQuery.of(context).size.width,
              fitStyle: BoxFit.cover,
              align: Alignment.bottomLeft,
              textSize: 4,
            ),
      child: Column(
        children: [

          HomeCardURL(
            image: 'assets/images/resources.jpeg',
            text: 'Resources',
            url: 'https://www.antiochorlando.com/resources',
              height: MediaQuery.of(context).size.height /4,
              width: MediaQuery.of(context).size.width /1.4,
            fitStyle: BoxFit.cover,
          )
        ],)
    );
  }
}