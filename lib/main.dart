import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.blue,
                  ],
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'images/1212.jpeg',
                      width: 121,
                      height: 121,
                    ),
                  ),
                  Text(
                    'There is Image',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            ListTileRow(
              icon: Icon(
                Icons.person,
                size: 40,
              ),
              text: 'There is Profile',
            ),
            ListTileRow(
              icon: Icon(
                Icons.notifications,
                size: 40,
              ),
              text: 'There is Notification',
            ),
            ListTileRow(
              icon: Icon(
                Icons.people,
                size: 40,
              ),
              text: 'There is People',
            ),
            ListTileRow(
              icon: Icon(
                Icons.ring_volume,
                size: 40,
              ),
              text: 'There is Ringar',
            ),
            ListTileRow(
              icon: Icon(
                Icons.lock,
                size: 40,
              ),
              text: 'There is Logout',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTileRow();
  }
}

class ListTileRow extends StatelessWidget {
  final Icon icon;
  final String text;
  const ListTileRow({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.orange,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 24, 8, 0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.orange[900],
              ),
            ),
          ),
          height: 40,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              icon,
              Row(
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_right,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
