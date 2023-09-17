import 'package:flutter/material.dart';
import 'package:test/SecondScreen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final ButtonStyle customButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF114817),
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
              'assets/images/background-image.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            Image.asset(
              'assets/images/background-image-top.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ).animate(delay: 5000.ms).fadeOut(duration: 600.ms),

            // Content on top of the background and logo with Margin
            Positioned(
              top: MediaQuery.of(context).size.height - 700,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                    child: Text(
                  'AN APP THAT REWARDS YOU AFTER AN EXERCISE,\nWHICH IS WHAT YOU DESERVE.',
                  style: TextStyle(
                    color: Color(0xFF114817),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                  textAlign: TextAlign.center,
                ).animate(delay: 5000.ms).fadeIn(duration: 600.ms)),
              ),
            ),

            // Centered Logo with Margin
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.gif'),
                  ),
                ),
                margin: EdgeInsets.all(0),
              ),
            ),

            // Content on top of the background and logo with Margin
            Positioned(
              bottom: 200,
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
                          builder: (context) => SecondScreen(),
                        ),
                      );
                    },
                    style: customButtonStyle,
                    child: Text(
                      'GET STARTED',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 247, 242, 227),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ).animate(delay: 5500.ms).fadeIn(duration: 600.ms),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
