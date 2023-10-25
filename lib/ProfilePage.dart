import 'package:flutter/material.dart';
import 'package:test/SignInFormField.dart';
import 'signInPage_calibrationBefore.dart';
import 'navBarBottom.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

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
        title: Text(
          "@ANDAMANSPEAKS",
          style: TextStyle(fontSize: 18, color: Color(0xffF7F2E3)),
        ),
        leadingWidth: 110,
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
        actions: [
          Icon(
            Icons.search,
            color: Color(0xFFF7F2E3),
            size: 30,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Color(0xFFF7F2E3),
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
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
                image:
                    NetworkImage('assets/images/bgImage_calibrationBefore.png'),
              ),
            ),
          ),
          Column(
            children: [
              // Your content for the body here
            ],
          ),
          Positioned(
            bottom:
                0, // Adjust this value to position the BottomAppBar as needed
            left: 0,
            right: 0,
            child: BottomAppBar(
              color: Colors.transparent,
              elevation: 0.0,
              child: NavBarBottom(),
            ),
          ),
        ],
      ),
    );
  }
}
