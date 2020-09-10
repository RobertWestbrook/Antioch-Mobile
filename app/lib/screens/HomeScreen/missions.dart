import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
        title: 'Mission',
        image: 'assets/images/earth.png',
        child: Column(
          children: [
            HomeCardNat(
              image: 'assets/images/detroit.png',
              text: '',
              route: DetroitPop(),
              height: MediaQuery.of(context).size.height / 3,
              fitStyle: BoxFit.fitHeight,
            ),
            HomeCardURL(
              image: 'assets/images/prayer.jpg',
              text: '',
              url: 'https://www.antiochorlando.com/prayer-room',
              height: MediaQuery.of(context).size.height / 4,
            )
          ],
        ));
  }
}

class DetroitPop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardPopUp(
      image: 'assets/images/detroit.png',
      title: 'Detroit',
      height: MediaQuery.of(context).size.height / 3,
      fitStyle: BoxFit.fitWidth,
      child: Column(
        children: [
          PopUpListTile(
            title: Text('Description:'),
            body: """Throughout this year, The United States has had to navigate many different challenging situations, but none of them were a surprise to Jesus. And through all of it, the mission He has called us to hasn't changed! At the end of Matthew, Jesus told His followers to go and make disciples of all nations (Matt 28:19-20). And in Acts, He tells them that the Holy Spirit will come upon them and they will be His witnesses in Jerusalem, Judea, Samaria, and the ends of the earth (Acts 1:8). Currently many of the international borders are closed due to COVID-19, so we are unable to go overseas. However, we have an opportunity to go and share the love of Jesus in our own nation- which is our “Judea and Samaria”! We will be partnering with another church in our movement called Antioch Ann Arbor (which is a city outside of Detroit). We will spend time worshiping Jesus in the mornings, building family throughout the trip, and sharing the love of Jesus daily with those who don’t know Him! """,
            ),
          ListTile(
              onTap: (){launchURL('https://www.antiochorlando.com/detroit');},
              trailing: FaIcon(FontAwesomeIcons.cloud, color: Colors.blueAccent[400]),
              title: Text('Get more info here...'),
              subtitle: Text("Website: www.antiochorlando.com/detroit"),
            ),
        ],
      ),
    );
  }
}
