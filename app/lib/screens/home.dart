import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

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


      //Buttons
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
            child: Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Cards(pic: Icons.book, text: 'Jesus'),
                Cards(pic: Icons.people, text: 'Family'),
                Cards(pic: Icons.tag_faces, text: 'Discipleship'),
                Cards(pic: Icons.airplanemode_active, text: 'Serve'),
                Cards(pic: Icons.airline_seat_legroom_normal, text: 'Mission'),
            ],
          ),
            ),
        ),
      ),
    );
  }
}

// Button Functionality
class Cards extends StatelessWidget {

  final pic;
  final text;

  Cards({this.pic = Icons.computer, this.text = 'item'});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(10),
        color: Colors.grey[800],
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {},
              splashColor: Colors.blueGrey[800],
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: [
                  Icon(
                    pic,
                    size: 70,
                    color: Colors.blueGrey,
                    ),
              Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(text,
                style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ],
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
