import 'package:flutter/material.dart';
import 'SignInPage3.dart';

class SignInPage_calibrationBefore extends StatelessWidget {
  const SignInPage_calibrationBefore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: -30,
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Color(0xFFF7F2E3),
            fontSize: 26,
          ),
        ),
        leadingWidth: 120,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFFF7F2E3), size: 24),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInPage3()),
            );
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage('assets/images/bgImage_calibrationBefore.png'),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            const Divider(
              color: Color(0xFFF7F2E3),
              height: 25,
              thickness: 1,
              indent: 40,
              endIndent: 40,
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  "Calibration".toUpperCase(),
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFFF7F2E3),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "of Heart rate wearable".toUpperCase(),
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFF7F2E3),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "This will only take a Minute".toUpperCase(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFF7F2E3),
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Image(
                  image: NetworkImage(
                      'assets/images/buttonStart_calibrationBefore.png'),
                ),
                SizedBox(
                  height: 60,
                ),
                Image(
                  image:
                      NetworkImage('assets/images/image_calibrationBefore.png'),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Don't Have a HEARTWARE?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    color: Color(0xFFF7F2E3),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
