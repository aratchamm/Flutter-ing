import 'package:flutter/material.dart';
import 'package:test/FirstScreen.dart';
import 'package:test/SecondScreen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';

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
  int _elapsedTime = 0;
  late Timer _timer;

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

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedTime++;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    // อย่าลืมยกเลิกการใช้งาน Timer เมื่อ Widget ถูก dispose
    _timer.cancel();
  }

  // ฟังก์ชันแปลงเวลาจากวินาทีเป็น "hh:mm:ss"
  String formatElapsedTime(int elapsedSeconds) {
    final hours = elapsedSeconds ~/ 3600;
    final minutes = (elapsedSeconds % 3600) ~/ 60;
    final seconds = elapsedSeconds % 60;

    final hoursStr = hours.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
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
              top: 50,
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
              top: 75,
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
                  width: 20,
                  // Set the width as needed
                  child: Image.asset(
                    'assets/images/back.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height - 605,
              left: MediaQuery.of(context).size.width - 105,
              right: 0,
              child: Container(
                  child: Text(
                '${formatElapsedTime(_elapsedTime)}',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              )),
            ),

            // Content on top of the background and logo with Margin
            Positioned(
              top: a == null
                  ? MediaQuery.of(context).size.height - 550
                  : MediaQuery.of(context).size.height - 570,
              left: 50,
              right: 0,
              child: Container(
                child: Text(
                  '${a ?? 'load...'}',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: a == null ? 20 : 38,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),

            Positioned(
              top: b != null
                  ? MediaQuery.of(context).size.height - 485
                  : MediaQuery.of(context).size.height - 455,
              left: 50,
              right: 0,
              child: Container(
                  child: Text(
                '${b ?? 'load...'}',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: b == null ? 20 : 48,
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
