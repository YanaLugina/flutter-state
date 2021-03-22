import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vanilla state',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    double _size = 50.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Vanilla State Demo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: IconButton(
                icon: (_rating >= 1
                    ? Icon(Icons.star, size: _size,)
                    : Icon(Icons.star_border, size: _size,)
                ),
                color: Colors.indigo[500],
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 1;
                  });
                },
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >=2
                    ? Icon(Icons.star, size: _size,)
                    : Icon(Icons.star_border, size: _size,)
                ),
                color: Colors.indigo[500],
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 2;
                  });
                },
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >=3
                    ? Icon(Icons.star, size: _size,)
                    : Icon(Icons.star_border, size: _size,)
                ),
                color: Colors.indigo[500],
                iconSize: _size,
                onPressed: () {
                  setState(() {
                    _rating = 3;
                  });
                },
              ),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
