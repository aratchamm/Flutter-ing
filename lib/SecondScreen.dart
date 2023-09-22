import 'package:flutter/material.dart';
import 'package:test/ThirdScreen.dart';
import 'package:test/FirstScreen.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final ButtonStyle ButtonSTARTStyle = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF9AC89B),
    minimumSize: Size(200, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5),
        bottomLeft: Radius.circular(35),
        topRight: Radius.circular(35),
        bottomRight: Radius.circular(5),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // Background Image
            Image.asset(
              'assets/images/secondPage.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            Positioned(
              top: 30,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstScreen(),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    width: 20, // Set the width as needed
                    child: Image.asset(
                      'assets/images/top_second.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            // Content on top of the background and logo with Margin
            Positioned(
              top: MediaQuery.of(context).size.height - 730,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                    child: Text(
                  '25,032',
                  style: TextStyle(
                    color: Color(0xFF114817),
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                  textAlign: TextAlign.center,
                )),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height - 540,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdScreen(),
                        ),
                      );
                    },
                    style: ButtonSTARTStyle,
                    child: Text(
                      'START',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF7F2E3),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
