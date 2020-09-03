import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Giving extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: 'Give Here',
      body: new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: RaisedButton(
                onPressed: _launchURL,
                child: Text('Give Here'),
              ),
            ),
          ),
        ]
      ),
    ),
  );
}
}

_launchURL() async {
  const url = 'https://www.eservicepayments.com/cgi-bin/Vanco_ver3.vps?appver3=Fi1giPL8kwX_Oe1AO50jRr4mGb0It4TYvE_KbjisQCcxU3skkebpBt_ICFdwgq6r2EvVVAEjqawDomKT1pbouczlsuoJF8ZZ5ZIIdsmQLwM=&ver=3';
  if (await canLaunch(url)) {
    await launch(url,forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}