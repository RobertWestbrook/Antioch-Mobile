import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';


class Jesus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Jesus',
      image: 'assets/images/cross.png',
      child: Column(
        children: [
          HomeCardURL(
            image: 'assets/images/Worship.jpg',
            text: 'Live',
            url: 'https://www.youtube.com/embed/live_stream?channel=UCwiIoDEhcoiugRExj98vBWg',
            height: MediaQuery.of(context).size.height /1.7,
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sermons',
            height: MediaQuery.of(context).size.height /3,
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            height: MediaQuery.of(context).size.height /3,
            fitStyle: BoxFit.fitHeight,
                    )
        ],)
    );
  }
}