import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Antioch_App/screens/screens.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final List<Widget> _routes = [
    Home(),
    Events(),
    Giving(),
    Notifications(),
  ];

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _routes[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[

            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                  ),
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.calendar,
                  ),
                title: Text('Events')),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.gift,
                  ),
                title: Text('Giving')),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.bell,
                  ),
                title: Text('Notifications')),

          ],
          fixedColor: Colors.lightBlueAccent[200],
          currentIndex: _selectedIndex,
          onTap: onTapped,
            ),
    );
        }
      }

