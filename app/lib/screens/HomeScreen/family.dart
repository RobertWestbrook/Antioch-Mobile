import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Family extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Family',
      image: 'assets/images/home.png',
      spot: SpotCard(
              image: 'assets/images/lg.jpeg',
              text: 'LifeGroups',
              url: 'https://www.antiochorlando.com/lifegroups',
              fitStyle: BoxFit.cover,
            ),
      child: Row(
        children: [
          
          HomeCardURL(
            image: 'assets/images/college.jpg',
            text: 'College',
            url: 'https://www.antiochorlando.com/college-lifegroups',
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/ya.jpg',
            text: 'Young Adults',
            url: 'https://www.antiochorlando.com/ya-lifegroups',
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/families.jpg',
            text: 'Families',
            url: 'https://www.antiochorlando.com/family-lifegroup',
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/college.jpg',
            text: 'Youth',
            url: 'https://www.antiochorlando.com/youth-lifegroup',
            fitStyle: BoxFit.cover,
          )
        ],)
    );
  }
}