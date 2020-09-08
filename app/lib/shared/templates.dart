import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

//_______________Base Screen Template ________________//

class BaseScreen extends StatelessWidget {
  final title;
  final color;
  final body;

  BaseScreen({this.title, this.color, this.body});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          centerTitle: true,
          title: title,
          backgroundColor: Colors.black,
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

//________________________________________________________//

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
          height: MediaQuery.of(context).size.height / 15,
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
            pinned: true,
            leading: HomeButton(
              image: image,
            ),
            title: Text(
              title,
              textScaleFactor: 2,
              textAlign: TextAlign.end,
            ),
            expandedHeight: MediaQuery.of(context).size.height / 20,
            forceElevated: innerBoxIsScrolled,
          ),
        ];
      },
      body: SingleChildScrollView(child: child),
    );
  }
}

//__________________Cards_______________________________//

class HomeCard extends StatelessWidget {
  final image;
  final text;
  final url;
  final height;
  final width;
  final fitStyle;
  HomeCard({this.image, this.text, this.url, this.height, this.width, this.fitStyle = BoxFit.fitWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
          onTap: () {launchURL(url);},
          child: Container(
            margin: EdgeInsets.fromLTRB(5,10,5,10),
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

//__________________Methods_______________________________//

launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
