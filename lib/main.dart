import 'package:flutter/material.dart';
import 'package:rebuilder/src/app.dart';
import 'package:rebuilder/src/error_page.dart';
import 'package:rebuilder/src/home_page.dart';
import 'package:rebuilder/src/rebuilder.dart';
import 'package:rebuilder/src/waiting_page.dart';

void main() {
  runApp(Rebuilder(
    waiting: (_) => App(child: WaitingPage()),
    errorBuilder: (_, error) => App(child: ErrorPage(error)),
    builder: (_, child) async {
      /// TODO: here you can initialize your services
      await Future.delayed(Duration(seconds: 3));

      return child;
    },

    /// This widget will be given to the builder callback
    child: App(child: HomePage()),
  ));
}
