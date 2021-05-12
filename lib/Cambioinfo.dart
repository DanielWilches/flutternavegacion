import 'package:flutter/material.dart';

class Cambioinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cambio = (MaterialApp(
        title: 'Cambio de informacion',
        home: Scaffold(appBar: _appBar(context), body: _body())));

    return cambio;
  }

  Widget _appBar(BuildContext context) {
    final appbar = (AppBar(
        title: Text(
          'Cambio de informacion',
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
}

// ignore: camel_case_types
class _body extends StatelessWidget {
  const _body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Titulo(), From()],
        )
      ],
    ));
  }
}

class From extends StatelessWidget {
  const From({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 767,
        child: Column(
          children: [
            Container(
              width: 767,
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: false,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                    labelText: 'nombre', icon: Icon(Icons.account_box)),
              ),
            ),
            Container(
              width: 767,
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                    labelText: 'email', icon: Icon(Icons.email)),
              ),
            ),
            Container(
              width: 767,
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.phone,
                obscureText: false,
                maxLength: 10,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                    labelText: 'numero', icon: Icon(Icons.phone)),
              ),
            ),
            Container(
              width: 767,
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                    labelText: 'contraseña',
                    icon: Icon(Icons.lock_open_rounded)),
              ),
            ),
            Container(
              width: 767,
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              padding: const EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                    labelText: 'confirmar contraseña',
                    icon: Icon(Icons.lock_open_rounded)),
              ),
            ),
            Container(
              width: 767,
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.amber,
                  border: Border.all(color: Colors.amberAccent, width: 1)),
              child: GestureDetector(
                onTap: () {
                  print('cambio de info se logro');
                  Navigator.pop(context);
                },
                child: Text(
                  'confirmar',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}

// ignore: camel_case_types
class Titulo extends StatelessWidget {
  const Titulo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 767,
      child: Container(
          width: 767,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.amberAccent, width: 1)),
          margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          padding: const EdgeInsets.all(10),
          child: Text(' Cambia tu informacion',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))),
    );
  }
}
