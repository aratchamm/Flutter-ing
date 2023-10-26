import 'package:flutter/material.dart';

import 'signInPage_calibrationBefore.dart';
import 'navBarBottom.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

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
                  color: Color(0xff735240), size: 24),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF7F2E3),
                border: Border.all(
                  width: 5,
                  color: Color.fromARGB(255, 247, 242, 227),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Text(
                  "The Talard".toUpperCase(),
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff735240),
                    letterSpacing: 5,
                  ),
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
                  color: Color(0xff735240), size: 24),
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
                  color: Color(0xff735240),
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
                image: NetworkImage('assets/images/bgImage_cart.png'),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
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
