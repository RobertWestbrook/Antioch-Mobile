import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Family extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Family',
      image: 'assets/images/home.png',
      child: Column(
        children: [
          HomeCardURL(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sermons',
            height: MediaQuery.of(context).size.height /5,
          ),
          HomeCardURL(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            height: MediaQuery.of(context).size.height /4,
          )
        ],)
    );
  }
}