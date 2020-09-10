import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';

class Serve extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Serve',
      image: 'assets/images/heart.png',
      child: Column(
        children: [
          HomeCardURL(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sunday-service',
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
