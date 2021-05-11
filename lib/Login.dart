import 'package:flutter/material.dart';
import 'package:rickandmortin/home.dart';
import 'package:rickandmortin/registro.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final login = (MaterialApp(
        title: 'Login',
        home: Scaffold(
          appBar: _appBar(context),
          body: SizedBox(width: double.infinity, child: _appfrom(context)),
        )));
    return login;
  }

  Widget _appBar(BuildContext context) {
    final appbar = (AppBar(
        title: Text(
          'Login',
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

  Widget _appfrom(BuildContext context) {
    final from = (ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 50),
            _imageFrom(context),
            SizedBox(height: 20),
            _inputsfrom(context),
            SizedBox(height: 20),
            _btnsfrom(context)
          ],
        ),
      ],
    ));
    return from;
  }

  Widget _imageFrom(BuildContext context) {
    final image = (Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(170, 221, 247, 0.3),
            blurRadius: 5,
            spreadRadius: 5)
      ]),
      child: Image.asset(
        "assets/rick.jpg",
        width: 400,
      ),
    ));
    return image;
  }

  Widget _inputsfrom(BuildContext context) {
    final inputs = (Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
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
                icon: Icon(Icons.email),
                labelText: 'Email',
              ),
            )),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
              strutStyle: StrutStyle(height: 2),
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.text_format),
                focusColor: Color.fromRGBO(65, 93, 34, 1),
                hoverColor: Color.fromRGBO(65, 93, 34, 1),
                labelText: 'Contaseña',
              ),
            )),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
              maxLength: 10,
              keyboardType: TextInputType.phone,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
              obscureText: false,
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                labelText: 'numero',
              ),
            ))
      ],
    ));
    return inputs;
  }

  Widget _btnsfrom(BuildContext context) {
    final btns = (Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(152, 236, 224, .5),
          ),
          child: GestureDetector(
            onTap: () {
              print('iniciar session');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Text(
              'inicio de session',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(30, 169, 30, .9),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Registro()));
              print('registrase');
            },
            child: Text(
              'Registrarse',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    ));
    return btns;
  }
}
