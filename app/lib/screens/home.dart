import 'package:Antioch_App/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      title: 'Antioch Orlando',
      body: HomeButtons(),
    );
  }
}

class JesusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      title: 'Jesus',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Hero(
                tag: 'jesus',
                child:
                    Icon(Icons.book, size: 80, color: Colors.blueGrey[100])),
              Text('Jesus', style: TextStyle(fontSize: 40)),
            ],
          ),
        ],
      ),
    );
  }
}

class FamilyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      title: 'Family',
    );
  }
}

class DiscipleshipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      title: 'Discipleship',
    );
  }
}

class ServePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      title: 'Serve',
    );
  }
}

class MissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      title: 'Mission',
    );
  }
}
