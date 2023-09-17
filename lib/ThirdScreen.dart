import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:test/SecondScreen.dart';

class ThirdScreen extends StatefulWidget {
  ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
              'assets/images/thirdPage.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            Positioned(
              top: 80,
              left: 40, // Set the distance from the top as needed
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 20, // Set the width as needed
                  child: Image.asset(
                    'assets/images/back.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height - 673,
              left: MediaQuery.of(context).size.width - 115,
              right: 0,
              child: Container(
                  child: Text(
                '1:39:06',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              )),
            ),

            // Content on top of the background and logo with Margin
            Positioned(
              top: MediaQuery.of(context).size.height - 650,
              left: 60,
              right: 0,
              child: Container(
                  child: Text(
                '320',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              )),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height - 550,
              left: 60,
              right: 0,
              child: Container(
                  child: Text(
                '130',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
