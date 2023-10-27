import 'package:flutter/material.dart';
import 'signInPage3.dart';
import 'signInPage1.dart';
import 'SignInFormField.dart';

class SignInPage2 extends StatelessWidget {
  const SignInPage2({Key? key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => SignInPage1()),
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
            image: AssetImage('assets/images/background-image_signIn_2.jpg'),
          ),
        ),
        child: SingleChildScrollView(
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
                    "Almost there!".toUpperCase(),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transform.scale(
                    scale: 0.5, // Adjust the scale factor as needed
                    child: Image(
                      image: AssetImage(
                          'assets/images/LinearProcess_almost.png'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "General InfoRmation".toUpperCase(),
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
                    "Create Account".toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: SignInFormPage2(),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage3()),
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
      ),
    );
  }
}
