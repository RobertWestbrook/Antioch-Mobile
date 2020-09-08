import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  final controller = PageController(
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: Image.asset('assets/images/slogo.png',
            height: MediaQuery.of(context).size.height / 15),
        body: Material(
          type: MaterialType.transparency,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Jesus(),
                Discipleship(),
                Family(),
                Serve(),
                Mission(),
              ],
            ),
          ),
        ));
  }
}

class Jesus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Jesus',
      image: 'assets/images/cross.png',
      child: Column(
        children: [
          HomeCard(
            image: 'assets/images/Worship.jpg',
            text: 'Live',
            url: 'https://www.youtube.com/embed/live_stream?channel=UCwiIoDEhcoiugRExj98vBWg',
            height: MediaQuery.of(context).size.height /1.6,
            fitStyle: BoxFit.fitHeight,
          ),
          HomeCard(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sermons',
            height: MediaQuery.of(context).size.height /2.8,
            fitStyle: BoxFit.cover,
          ),
          HomeCard(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            height: MediaQuery.of(context).size.height /2.8,
            fitStyle: BoxFit.fitHeight,

          )
        ],)
    );
  }
}

class Discipleship extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Discipleship',
      image: 'assets/images/anvil.png',
      child: Column(
        children: [
          HomeCard(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sermons',
            height: MediaQuery.of(context).size.height /5,
          ),
          HomeCard(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            height: MediaQuery.of(context).size.height /4,
          )
        ],)
    );
  }
}

class Family extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Family',
      image: 'assets/images/home.png',
      child: Column(
        children: [
          HomeCard(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sermons',
            height: MediaQuery.of(context).size.height /5,
          ),
          HomeCard(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            height: MediaQuery.of(context).size.height /4,
          )
        ],)
    );
  }
}

class Serve extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Serve',
      image: 'assets/images/heart.png',
      child: Column(
        children: [
          HomeCard(
            image: 'assets/images/Sermon.jpg',
            text: 'Sermons',
            url: 'https://www.antiochorlando.com/sunday-service',
            height: MediaQuery.of(context).size.height /5,
          ),
          HomeCard(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            height: MediaQuery.of(context).size.height /4,
          )
        ],)
    );
  }
}


class Mission extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeButtonArea(
      title: 'Mission',
      image: 'assets/images/earth.png',
      child: Column(
        children: [
          HomeCard(
            image: 'assets/images/prayer.jpg',
            text: 'Detroit',
            url: 'https://www.antiochorlando.com/sermons',
            height: MediaQuery.of(context).size.height /5,
          ),
          HomeCard(
            image: 'assets/images/prayer.jpg',
            text: '',
            url: 'https://www.antiochorlando.com/prayer-room',
            height: MediaQuery.of(context).size.height /4,
          )
        ],)
    );
  }
}