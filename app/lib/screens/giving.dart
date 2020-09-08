import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Giving extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: Text('Giving'),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/giving.jpeg'), fit: BoxFit.cover),
              color: Colors.blueGrey[50].withOpacity(.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: RaisedButton(
                      color: Colors.blueGrey.withOpacity(.6),
                      elevation: 5,
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      onPressed: _launchURL,
                      child: Text('Give Here',
                        textScaleFactor: 2,
                      ),
                    )
                  )
                ]),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

_launchURL() async {
  const url =
      'https://www.eservicepayments.com/cgi-bin/Vanco_ver3.vps?appver3=Fi1giPL8kwX_Oe1AO50jRr4mGb0It4TYvE_KbjisQCcxU3skkebpBt_ICFdwgq6r2EvVVAEjqawDomKT1pbouczlsuoJF8ZZ5ZIIdsmQLwM=&ver=3';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
