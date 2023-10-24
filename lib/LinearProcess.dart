import 'package:flutter/material.dart';

class LinearProgressIndicatorClass extends StatefulWidget {
  @override
  _LinearProgressIndicatorClassState createState() =>
      _LinearProgressIndicatorClassState();
}

class _LinearProgressIndicatorClassState
    extends State<LinearProgressIndicatorClass> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: () {
          setState(() {
            loading = !loading;
          });
        },
      ),
      body: loading
          ? LinearProgressIndicator()
          : Text(
              "No task to do",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
