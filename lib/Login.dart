import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final login = (MaterialApp(
        title: 'Login',
        home: Scaffold(
          appBar: PreferredSize(
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
                leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(150.0))),
              ),
              preferredSize: Size.fromHeight(200.00)),
          body: SizedBox(
            width: double.infinity,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
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
                            onPressed: () {},
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
              ],
            ),
          ),
        )));
    return login;
  }

/* _volver() {
  print('volver');
  Navigator.pop(context);
} */

}
