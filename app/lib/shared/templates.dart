import 'package:flutter/material.dart';
// import 'package:Antioch_App/shared/navigation.dart';

//_______________Base Screen Template ________________//

class BaseScreen extends StatelessWidget {
  final title;
  final color;
  final body;

  BaseScreen({this.title, this.color, this.body});

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: new Container(),
          centerTitle: true,
          title: Text(title, textAlign: TextAlign.center),
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/LogoWhite.png'),
                      fit: BoxFit.fitWidth))),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.grey[800].withOpacity(.9), Colors.grey[900].withOpacity(.8),
                  ]
                )
              ),
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

class HomeButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){},
            height: 100,
            color: Colors.blueGrey[500].withOpacity(.5),
            elevation: 20,


      ),
        ),
    );
  }
}
