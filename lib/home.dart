import 'package:flutter/material.dart';
import 'package:rickandmortin/descripcion.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final login = (MaterialApp(
        title: 'Login',
        home: Scaffold(
          appBar: _appBar(context),
          body: SizedBox(
            width: double.infinity,
            child: _bodyhome(context),
          ),
          drawer: drawer(context),

          /* body: SizedBox(width: double.infinity, child: _appfrom(context)), */
        )));
    return login;
  }

  Widget drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff415D22).withOpacity(0.7),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 100,
                  child: Image.network(
                      "https://www.tonica.la/__export/1595702332011/sites/debate/img/2020/07/25/rick-and-morty-escritores-trabajan-en-la-temporada-6.jpg_1902800913.jpg"),
                )
              ],
            ),
          ),
          ListTile(
            title: Text(
              'tu nombre',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            leading: Icon(Icons.account_box),
          ),
          ListTile(
            title: Text(
              'Creacion de la cuenta',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            leading: Icon(Icons.app_blocking),
          ),
          ListTile(
            title: Text(
              'version',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            leading: Icon(Icons.apps),
          ),
          ListTile(
            title: Text(
              'calificar app ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            leading: Icon(Icons.high_quality),
          ),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    final appbar = (AppBar(
      title: Text(
        'Home',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
/*         leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }
            ) */
    ));
    return appbar;
  }

  Widget _bodyhome(BuildContext context) {
    final bodyhome = (ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: Text(
                'Summer',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                width: 500,
                margin: const EdgeInsets.all(10),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida erat et metus rhoncus rutrum. Donec sollicitudin massa quis nisi placerat varius vitae a sapien. Nullam auctor mattis tincidunt. Donec elementum pretium ex, id consequat leo blandit non. Sed blandit posuere luctus. Pellentesque placerat dictum nibh',
                  textAlign: TextAlign.center,
                )),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(152, 236, 224, 1),
              ),
              margin: const EdgeInsets.all(30),
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                  onTap: () {
                    print('descripcion');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Descripcion()));
                  },
                  child: Text(
                    'mas info',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
            ),
          ],
        )
      ],
    ));
    return bodyhome;
  }
}
