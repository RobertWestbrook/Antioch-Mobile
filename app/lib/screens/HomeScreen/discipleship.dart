import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Discipleship extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Discipleship',
      image: 'assets/images/anvil.png',
      spot: SpotCard(
              image: 'assets/images/ads.jpeg',
              text: 'Antioch\nDiscipleship\nSchool',
              url: 'https://www.antiochorlando.com/discipleship-school',
              fitStyle: BoxFit.cover,
              align: Alignment.bottomLeft,

            ),
      child: Column(
        children: [

          HomeCardURL(
            image: 'assets/images/resources.jpeg',
            text: 'Resources',
            url: 'https://www.antiochorlando.com/resources',
            fitStyle: BoxFit.cover,
          )
        ],)
    );
  }
}