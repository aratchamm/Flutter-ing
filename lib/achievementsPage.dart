import 'package:flutter/material.dart';

import 'signInPage_calibrationBefore.dart';
import 'navBarBottom.dart';

class AchievementsPage extends StatelessWidget {
  AchievementsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: -30,
        centerTitle: true,
        title: Column(
          children: [
            RotationTransition(
              turns: AlwaysStoppedAnimation(270 / 360),
              child: Icon(Icons.arrow_back_ios,
                  color: Color(0xffF7F2E3), size: 24),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Text(
                "Your \nachievements".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffF7F2E3),
                  letterSpacing: 5,
                ),
              ),
            ),
          ],
        ),
        leadingWidth: 80,
        leading: Column(
          children: [
            SizedBox(
              height: 38,
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios,
                  color: Color(0xffF7F2E3), size: 24),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SignInPage_calibrationBefore()),
                );
              },
            ),
          ],
        ),
        actions: [
          Column(
            children: [
              SizedBox(
                height: 44,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.search,
                  color: Color(0xffF7F2E3),
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('assets/images/bgImage_achievement.png'),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 115, 82, 64),
        elevation: 0.0,
        child: NavBarBottom(),
      ),
    );
  }
}
