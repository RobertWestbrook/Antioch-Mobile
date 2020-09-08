import 'package:Antioch_App/shared/templates.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        color: Colors.blueAccent,
        title: Text('Events'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                  // padding: EdgeInsets.all(10),
                  itemCount: 25,
                  itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[100].withOpacity(.2)),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(10),
                          leading: Icon(
                            FontAwesomeIcons.calendarDay,
                            color: Colors.blueAccent[100],
                            size: 40,
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.arrowAltCircleRight,
                            color: Colors.blueAccent[100],
                            size: 20,),
                          title: Text('This is event ${index + 1}'),
                          onTap: () {},
                        ),
                      )),
          ),],
      )
    );
  }
}
