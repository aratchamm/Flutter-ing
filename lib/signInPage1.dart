import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'SignInFormField.dart';
import 'signInPage2.dart';

class SignInPage1 extends StatelessWidget {
  const SignInPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            color: Colors.black,
            fontSize: 26,
          ),
        ),
        leadingWidth: 120,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 24),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
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
            image: NetworkImage('assets/images/background-image_signIn_1.png'),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            const Divider(
              color: Colors.black,
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
                  "Fitcare Savings".toUpperCase(),
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Let's Get Started!",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text(
                  "General InfoRmation".toUpperCase(),
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: SignInForm(),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage2()),
                    );
                  },
                  child: const Text('NEXT'),
                  style: customButtonStyle,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Text(
                  "Create Account".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFFCF9A40)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "|".toUpperCase(),
                  style: TextStyle(fontSize: 16, color: Color(0xFFCF9A40)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Verify Phone number".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFFCF9A40)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "|".toUpperCase(),
                  style: TextStyle(fontSize: 16, color: Color(0xFFCF9A40)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Calibrate Heartware".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Color(0xFFCF9A40)),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
