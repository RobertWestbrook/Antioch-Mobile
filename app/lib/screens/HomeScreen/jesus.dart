import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';


class Jesus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Jesus',
      image: 'assets/images/cross.png',
      spot: SpotCard(
              image: 'assets/images/Worship.jpg',
              text: 'Live',
              url: 'https://www.youtube.com/embed/live_stream?channel=UCwiIoDEhcoiugRExj98vBWg',
              fitStyle: BoxFit.cover,
              align: Alignment.bottomLeft,),
      child: Row(
        children: [
          HomeCardURL(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sermons',
            fitStyle: BoxFit.cover,
            align: Alignment.center,
          ),
          HomeCardURL(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            fitStyle: BoxFit.cover
                    )
        ],)
    );
  }
}