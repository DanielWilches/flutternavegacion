import 'package:flutter/material.dart';
import 'package:rickandmortin/Login.dart';

void main() {
  runApp(MaterialApp(
    title: 'navegacion',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final home = (MaterialApp(
      title: 'rick amd morty',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            title: Text(
              'rick and morty',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.account_box, size: 35),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  })
            ],
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(0.0))),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu gravida urna. Aliquam erat volutpat. Vestibulum id neque tincidunt, aliquet felis vel, euismod ipsum. Nam eget sem finibus, efficitur ex quis, aliquet lectus. Donec nisl ipsum, vehicula non porta at, tempus semper arcu. Nam posuere pulvinar mi a consectetur. Praesent euismod commodo nulla. Quisque tellus lectus, porta non tempor ac, semper in leo. Vivamus luctus turpis vel risus consequat semper a et tellus.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
    return home;
  }
}
