import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';
import 'package:Antioch_App/screens/screens.dart';


class Home extends StatelessWidget {
  final controller = PageController(
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: Image.asset('assets/images/slogo.png',
            height: MediaQuery.of(context).size.height / 15),
        body: Material(
          type: MaterialType.transparency,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Jesus(),
                Discipleship(),
                Family(),
                Serve(),
                Mission(),
              ],
            ),
          ),
        ));
  }
}