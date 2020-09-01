import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/': (context) => LoginScreen(),
        '/': (context) => HomeScreen()
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
      ),
    );
  }
}

// -------------App Bar and Drawer-------------------//

// Title Bar
AppBar headerNav({String title}) {
  return AppBar(title: Text(title), backgroundColor: Colors.transparent);
}

//Menu Drawer
Drawer baseDrawer() {
  return Drawer(
    elevation: 100,
    child: ListView(
      children: [
        DrawerHeader(
            margin: EdgeInsets.all(20),
            child: Text(
              'More Options',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            )),
        DrawerTiles(text: 'Our Team'),
        DrawerTiles(text: 'Contact Us'),
        DrawerTiles(text: 'Belief Statments'),
        DrawerTiles(text: 'Resources'),
        DrawerTiles(text: 'Our Movement'),
        DrawerTiles(text: 'Settings'),
      ],
    ),
  );
}

//Drawer Items Functionality
class DrawerTiles extends StatelessWidget {
  final text;

  DrawerTiles({this.text = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.blueGrey[800],
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}

// -------------Homescreen-------------------//
// Home Buttons
class HomeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Cards(
                tag: 'jesus',
                pic: Icons.book, 
                text: 'Jesus', 
                route: JesusPage()),
            Cards(
                tag: 'family',
                pic: Icons.people, 
                text: 'Family', 
                route: FamilyPage()),
            Cards(
                tag: 'dship',
                pic: Icons.tag_faces,
                text: 'Discipleship',
                route: DiscipleshipPage()),
            Cards(
                tag: 'serve',
                pic: Icons.airline_seat_legroom_normal,
                text: 'Serve',
                route: ServePage()),
            Cards(
                tag: 'mission',
                pic: Icons.airplanemode_active,
                text: 'Mission',
                route: MissionPage()),
          ],
        ),
      ),
    );
  }
}

// Button Functionality
class Cards extends StatelessWidget {
  final pic;
  final text;
  final route;
  final tag;

  Cards({this.pic = Icons.computer, this.text = 'item', this.route, this.tag});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(10),
        color: Colors.grey[800],
        elevation: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => route));
              },
              splashColor: Colors.blueGrey[800],
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: [
                  Hero(tag: tag, child: Icon(pic, size: 50, color: Colors.blueGrey)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(text,
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// -------------Default Screens-------------------//
class Screen extends StatelessWidget {
  final body;
  final title;

  Screen({
    this.body,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 30, 30, 2),
      appBar: headerNav(title: title),
      endDrawer: baseDrawer(),
      body: body,
    );
  }
}
