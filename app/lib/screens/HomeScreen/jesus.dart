import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';


class Jesus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Jesus',
      image: 'assets/images/cross.png',
      spot: HomeCardURL(
              image: 'assets/images/Worship.jpg',
              text: 'Live',
              url: 'https://www.youtube.com/embed/live_stream?channel=UCwiIoDEhcoiugRExj98vBWg',
              height: MediaQuery.of(context).size.height /2.5,
              width: MediaQuery.of(context).size.width,
              fitStyle: BoxFit.cover),
      child: Row(
        children: [
          HomeCardURL(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sermons',
            height: MediaQuery.of(context).size.height /4,
            width: MediaQuery.of(context).size.width /1.5,
            fitStyle: BoxFit.cover,
          ),
          HomeCardURL(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            height: MediaQuery.of(context).size.height /4,
            width: MediaQuery.of(context).size.width /1.5,
            fitStyle: BoxFit.cover
                    )
        ],)
    );
  }
}