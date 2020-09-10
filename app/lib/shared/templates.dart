import 'package:Antioch_App/shared/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

//_______________Base Screen Template ________________//

class BaseScreen extends StatelessWidget {
  final title;
  final color;
  final body;

  BaseScreen({this.title, this.color, this.body,});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          // leading: Container(),
          centerTitle: true,
          title: title,
          // backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fitWidth))),
            Container(
              decoration: BoxDecoration(
                  // color: Colors.white
                  gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                    Colors.grey[700].withOpacity(.9),
                    Colors.grey[900].withOpacity(.2),
                  ])),
            ),
            Container(
              child: body,
            )
          ],
        ),
        // bottomNavigationBar: NavBar(),
      ),
    );
  }
}

//__________________Home Buttons__________________________//
class HomeButton extends StatelessWidget {
  final image;
  final url;
  final label;

  HomeButton({this.image, this.url, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Ink.image(
          fit: BoxFit.fitHeight,
          height: MediaQuery.of(context).size.height / 20,
          image: AssetImage(image),
          child: InkWell(
            onTap: () {
              launchURL(url);
            },
          )),
    ]);
  }
}

//__________________Home Button Area_____________________//

class HomeButtonArea extends StatelessWidget {
  final image;
  final title;
  final child;

  HomeButtonArea({this.image, this.title, this.child});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
              title,
              textScaleFactor: 2,
              textAlign: TextAlign.end,
            )),
            backgroundColor: Color.fromRGBO(30, 30, 30, 1),
            pinned: false,
            leading: HomeButton(image: image),
            collapsedHeight: MediaQuery.of(context).size.height / 12,
            expandedHeight: MediaQuery.of(context).size.height / 5,
            forceElevated: innerBoxIsScrolled,
          ),
        ];
      },
      body: SingleChildScrollView(child: child),
    );
  }
}

//__________________Cards_______________________________//

class HomeCardURL extends StatelessWidget {
  final image;
  final text;
  final url;
  final height;
  final width;
  final fitStyle;

  HomeCardURL(
      {this.image,
      this.text,
      this.url,
      this.height,
      this.width,
      this.fitStyle = BoxFit.fitWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
          onTap: () {
            launchURL(url);
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.grey, BlendMode.softLight),
                  fit: fitStyle,
                  image: AssetImage(image)),
            ),
            child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    text,
                    textScaleFactor: 4,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(-5.0, 5.0),
                            blurRadius: 10.0,
                            color: Colors.blueGrey[800]),
                        Shadow(
                            offset: Offset(-5.0, 5.0),
                            blurRadius: 200.0,
                            color: Colors.blueGrey[400]),
                      ],
                    ),
                  ),
                )),
          )),
    ]);
  }
}

class HomeCardNat extends StatelessWidget {
  final image;
  final text;
  final route;
  final height;
  final width;
  final fitStyle;

  HomeCardNat(
      {this.image,
      this.text,
      this.route,
      this.height,
      this.width,
      this.fitStyle = BoxFit.fitWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => route));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.grey, BlendMode.softLight),
                  fit: fitStyle,
                  image: AssetImage(image)),
            ),
            child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    text,
                    textScaleFactor: 4,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(-5.0, 5.0),
                            blurRadius: 10.0,
                            color: Colors.blueGrey[800]),
                        Shadow(
                            offset: Offset(-5.0, 5.0),
                            blurRadius: 200.0,
                            color: Colors.blueGrey[400]),
                      ],
                    ),
                  ),
                )),
          )),
    ]);
  }
}

//__________________Card Pop Up____________________________//

class CardPopUp extends StatelessWidget {
  final title;
  final image;
  final text;
  final route;
  final height;
  final width;
  final fitStyle;
  final body;
  final child;

  CardPopUp({
    this.title,
    this.image,
    this.text,
    this.route,
    this.height,
    this.width,
    this.fitStyle = BoxFit.cover,
    this.body,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: Text(title),
        body: ListView(
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.grey, BlendMode.softLight),
                        fit: fitStyle,
                        image: AssetImage(image)),
                  )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: child,
                ),
              ),
              ],
          ),
          ]));
  }
}

class PopUpListTile extends ListTile{
  final body;
  final title;
  final trail;
  final onTap;
  PopUpListTile({this.body, this.title, this.onTap, this.trail});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      subtitle: Text(body),
      
          );
  }
}
//__________________Methods_______________________________//

launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
