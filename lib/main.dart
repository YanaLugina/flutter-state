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

  void _incrementCounter(int ratLoc) {
    setState(() {
      _rating = ratLoc;
    });
  }

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
            myWidgetStar(
              _rating,
              1,
              _size,
              _incrementCounter
            ),
            myWidgetStar(
              _rating,
              2,
              _size,
              _incrementCounter
            ),
            myWidgetStar(
              _rating,
              3,
              _size,
              _incrementCounter
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget myWidgetStar(int rating, int numLocal, double sizeStar, handleSetState) {
  return Container(
    child: IconButton(
      icon: (rating >= numLocal
          ? Icon(Icons.star, size: sizeStar,)
          : Icon(Icons.star_border, size: sizeStar,)
      ),
      color: Colors.indigo[500],
      iconSize: sizeStar,
      onPressed: () => handleSetState(numLocal),
    ),
  );
}
