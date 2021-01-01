import 'package:flutter/material.dart';

class WaitingPage extends StatefulWidget {
  @override
  _WaitingPageState createState() => _WaitingPageState();
}

class _WaitingPageState extends State<WaitingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: SizedBox(
                width: 100,
                height: 4,
                child: LinearProgressIndicator(),
              ),
            ),
            //
            SizedBox(height: 16),
            //
            Text('Waiting...'),
          ],
        ),
      ),
    );
  }
}
