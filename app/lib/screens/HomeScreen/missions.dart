import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Mission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
        title: 'Mission',
        image: 'assets/images/earth.png',
        spot: SpotCard(
                image: 'assets/images/japan.jpg',
                text: 'Into \n All \n the Earth...',
                url: 'https://www.antiochorlando.com/mission',
                fitStyle: BoxFit.fitHeight,
                align: Alignment.bottomLeft,
            ),            
        child: Row(
          children: [
            HomeCardNat(
                image: 'assets/images/detroit.png',
                text: '',
                route: DetroitPop(),
                fitStyle: BoxFit.cover,
            ),            
            HomeCardURL(
              image: 'assets/images/prayer.jpg',
              text: '',
              url: 'https://www.antiochorlando.com/prayer-room',
              fitStyle: BoxFit.cover,
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
      fitStyle: BoxFit.cover,
      child: Column(
        children: [
          PopUpListTile(
            title: Text('Description:'),
            body: """Throughout this year, The United States has had to navigate many different challenging situations, but none of them were a surprise to Jesus. And through all of it, the mission He has called us to hasn't changed! At the end of Matthew, Jesus told His followers to go and make disciples of all nations (Matt 28:19-20). And in Acts, He tells them that the Holy Spirit will come upon them and they will be His witnesses in Jerusalem, Judea, Samaria, and the ends of the earth (Acts 1:8). Currently many of the international borders are closed due to COVID-19, so we are unable to go overseas. However, we have an opportunity to go and share the love of Jesus in our own nation- which is our “Judea and Samaria”! We will be partnering with another church in our movement called Antioch Ann Arbor (which is a city outside of Detroit). We will spend time worshiping Jesus in the mornings, building family throughout the trip, and sharing the love of Jesus daily with those who don’t know Him! """,
            ),
          ListTile(
              onTap: (){launchURL('https://www.antiochorlando.com/detroit');},
              trailing: FaIcon(FontAwesomeIcons.cloud, color: Colors.blueAccent[100]),
              title: Text('Get more info here...'),
              subtitle: Text("Website: www.antiochorlando.com/detroit"),
            ),
          ListTile(
              onTap: (){launchURL('https://docs.google.com/forms/d/e/1FAIpQLScUo7NPROeftml3XtfdRV0UuZ-oNA9txsuXmVcMxCRX8qnMFg/viewform');},
              trailing: FaIcon(FontAwesomeIcons.addressCard, color: Colors.blueAccent[50]),
              title: Text('Register Now'),
            ),
        ],
      ),
    );
  }
}
