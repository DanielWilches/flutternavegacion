import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final registro = (MaterialApp(
      title: 'Registro',
      home: Scaffold(
        appBar: _appbar(context),
        body: SizedBox(
          width: double.infinity,
          child: __appbody(context),
        ),
      ),
    ));
    return registro;
  }

  Widget _appbar(BuildContext context) {
    final appbar = (PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          title: Text(
            'registro',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )));
    return appbar;
  }

  Widget __appbody(BuildContext context) {
    final appbody = (ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        _frominputs(context),
        SizedBox(
          height: 20,
        ),
        _fromBtn(context)
      ],
    ));
    return appbody;
  }

  Widget _frominputs(BuildContext context) {
    final fromInputs = (Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: TextField(
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
            obscureText: false,
            decoration: InputDecoration(
                icon: Icon(Icons.account_box_rounded),
                labelText: 'Nombre',
                helperText: 'ingrese aqui su nombre',
                helperStyle: TextStyle(
                  fontSize: 20,
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
            obscureText: false,
            decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'Email',
                helperText: 'ingrese aqui su Email',
                helperStyle: TextStyle(
                  fontSize: 20,
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: TextField(
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock_clock),
                labelText: 'contraseña',
                helperText: 'ingrese aqui su contraseña',
                helperStyle: TextStyle(
                  fontSize: 20,
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.phone_android),
                labelText: 'numero celular',
                helperText: 'ingrese aqui su numero',
                helperStyle: TextStyle(
                  fontSize: 20,
                )),
          ),
        )
      ],
    ));
    return fromInputs;
  }

  Widget _fromBtn(BuildContext context) {
    final frombtn = (Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(152, 236, 224, 1),
          ),
          child: GestureDetector(
            onTap: () {
              /*  Navigator.push(
                  context, MaterialPageRoute( builder: (context ) => Home()  )); */
            },
            child: Text(
              'Crear usuario',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    ));
    return frombtn;
  }
}
