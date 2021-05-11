import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget {
  const Descripcion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final login = (MaterialApp(
        title: 'descripcion',
        home: Scaffold(
          appBar: _appBar(context),
          body: _body(context),
        )));
    return login;
  }

  Widget _appBar(BuildContext context) {
    final appbar = (AppBar(
        title: Text(
          'descripcion',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            })));
    return appbar;
  }

  Widget _body(BuildContext context) {
    final bodyApp = (SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 10),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Image.network(
                "https://cdn.alfabetajuega.com/wp-content/uploads/2019/11/rick-sanchez-rick-morty.jpg"),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis nec arcu vitae eleifend. Mauris nisi odio, tristique imperdiet interdum vel, pulvinar quis diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis nec arcu vitae eleifend. Mauris nisi odio, tristique imperdiet interdum vel, pulvinar quis diam.',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    ));
    return bodyApp;
  }
}
