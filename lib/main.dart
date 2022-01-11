import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'animation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.black,
            // appBar: AppBar(
            //   title: const Text('Starting Point'),
            // ),
            body: Center(child: Image.asset("assets/car_1.png",scale: 1,fit: BoxFit.fitHeight,))
          ),
          IgnorePointer(
            child: AnimationScreen(
              color: Theme.of(context).accentColor
            )
          )
        ]
      )
    );
  }
}


