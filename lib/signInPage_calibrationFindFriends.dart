import 'package:flutter/material.dart';
import 'signInPage_calibrationBefore.dart';

class SignInPage_calibrationFindFriends extends StatelessWidget {
  const SignInPage_calibrationFindFriends({Key? key}) : super(key: key);

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
              MaterialPageRoute(
                  builder: (context) => SignInPage_calibrationBefore()),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Expanded(
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
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Image.network(
                        'assets/images/BottomImage_calibrationFindFriends.png'),
                    Positioned(
                      bottom: 50,
                      right: 0,
                      left: 0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SignInPage_calibrationBefore()),
                          );
                        },
                        child: Text(
                          "To continue without HEARTWEAE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF114817),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
