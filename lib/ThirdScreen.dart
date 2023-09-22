import 'package:flutter/material.dart';
import 'package:test/FirstScreen.dart';
import 'package:test/SecondScreen.dart';
import 'package:firebase_database/firebase_database.dart';

class ThirdScreen extends StatefulWidget {
  ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  DatabaseReference dbRef =
      FirebaseDatabase.instance.reference().child('session');

  int? a;
  int? b;

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
  void initState() {
    super.initState();

    // สมัครตัวเฝ้าระวังการเปลี่ยนแปลงข้อมูลใน Firebase Realtime Database
    dbRef.onValue.listen((event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>;
      setState(() {
        b = data['beatAvg'];
        a = data['calculateCalories'];
      });
    });
  }

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
                      'assets/images/top_third.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
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
              top: MediaQuery.of(context).size.height - 668,
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
              top: MediaQuery.of(context).size.height - 625,
              left: 60,
              right: 0,
              child: Container(
                  child: Text(
                '${a ?? '...'}',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              )),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height - 535,
              left: 60,
              right: 0,
              child: Container(
                  child: Text(
                '${b ?? '...'}',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 64,
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
