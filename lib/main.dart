import 'package:flutter/material.dart';
import 'SignInPage_calibrationFindFriends.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage_calibrationFindFriends(),
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
    ),
  );
}
