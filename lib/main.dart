import 'package:flutter/material.dart';
import 'package:test/FirstScreen.dart';
import 'package:test/SecondScreen.dart';
import 'package:test/ThirdScreen.dart';
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
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}
