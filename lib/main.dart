import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final applogin = (MaterialApp(
      title: 'rick amd morty',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            title: Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            leading: IconButton(icon: Icon(Icons.menu), onPressed: _menu),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(150.0))),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                /* height: , */
                child: Image.network(
                  "http://assets.stickpng.com/images/585e4bd7cb11b227491c3397.png",
                  width: 400,
                  height: 300,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: TextField(
                        strutStyle: StrutStyle(
                          height: 2,
                        ),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'email',
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: TextField(
                        strutStyle: StrutStyle(height: 2),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'contaseña',
                        ),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: TextButton(
                      child: Text('iniciar'),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Inicio()),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: TextButton(
                        onPressed: () {
                          print('registro');
                        },
                        child: Text('Registro')),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
    return applogin;
  }
}

void _menu() {
  print('menu');
}

class Inicio extends StatelessWidget {
  @override
  Widget Build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("incio"),
      ),
    );
  }
}
