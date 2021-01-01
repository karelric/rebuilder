import 'package:flutter/material.dart';
import 'package:rebuilder/src/rebuilder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rebuilder Example'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Rebuild'.toUpperCase()),
          onPressed: () => Rebuilder.of(context).rebuild(),
        ),
      ),
    );
  }
}
