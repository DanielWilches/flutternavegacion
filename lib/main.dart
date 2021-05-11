import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rickandmortin/src/login/Login.dart';

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
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            title: Text(
              'home',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.account_box),
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
                    child: Text('Bienbenido al home'),
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

/*   _ir() {
    print('ir');
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  } */
}
