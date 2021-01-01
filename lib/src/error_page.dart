import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  final Object error;

  ErrorPage(this.error);

  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Something went wrong!'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('ERROR: ${widget.error}'),
      ),
    );
  }
}
