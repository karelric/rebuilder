import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final Widget child;

  const App({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: child,
    );
  }
}
