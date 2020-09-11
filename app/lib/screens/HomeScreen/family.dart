import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Family extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Family',
      image: 'assets/images/home.png',
      spot: HomeCardURL(
              image: 'assets/images/lg.jpeg',
              text: 'LifeGroups',
              url: 'https://www.antiochorlando.com/lifegroups',
              height: MediaQuery.of(context).size.height /2.5,
              width: MediaQuery.of(context).size.width,
              fitStyle: BoxFit.cover,
            ),
      child: Row(
        children: [
          
          HomeCardURL(
            image: 'assets/images/college.jpg',
            text: 'College',
            url: 'https://www.antiochorlando.com/college-lifegroups',
              height: MediaQuery.of(context).size.height /4,
              width: MediaQuery.of(context).size.width /1.4,
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/ya.jpg',
            text: 'Young Adults',
            url: 'https://www.antiochorlando.com/college-lifegroups',
              height: MediaQuery.of(context).size.height /4,
              width: MediaQuery.of(context).size.width /1.4,
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/families.jpg',
            text: 'Families',
            url: 'https://www.antiochorlando.com/-lifegroups',
              height: MediaQuery.of(context).size.height /4,
              width: MediaQuery.of(context).size.width /1.4,
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/college.jpg',
            text: 'Youth',
            url: 'https://www.antiochorlando.com/college-lifegroups',
              height: MediaQuery.of(context).size.height /4,
              width: MediaQuery.of(context).size.width /1.4,
            fitStyle: BoxFit.cover,
          )
        ],)
    );
  }
}