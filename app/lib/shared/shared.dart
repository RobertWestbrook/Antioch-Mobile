import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  
  final Color backgroundColor = Colors.transparent;
  final  AppBar appBar;
  final List<Widget>  widgets;
  final Widget child;

  Menu({Key key, this.appBar, this.widgets, this.child}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 30, 30, 2),

      // Title Bar
      appBar: AppBar(
        title: Text('Antioch'),
        backgroundColor: Colors.transparent,
      ),

      //Menu
      endDrawer: Drawer(
        elevation: 100,
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.all(20),
              child: Text('More Options', 
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
              )
            ),
            DrawerTiles(text: 'Our Team'),
            DrawerTiles(text: 'Contact Us'),
            DrawerTiles(text: 'Belief Statments'),
            DrawerTiles(text: 'Resources'),
            DrawerTiles(text: 'Our Movement'),
            DrawerTiles(text: 'Settings'),

          ],
        ),
      ),
    );
   }  
 }

 //Drawer Items Functionality
class DrawerTiles extends StatelessWidget {
  final text;
  
  DrawerTiles({this.text = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      splashColor: Colors.blueGrey[800],
          child: ListTile(
          title: Text(text, 
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.right,
            ),
      ),
    );
  }
}