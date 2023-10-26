import 'package:flutter/material.dart';
import 'package:test/SignInFormField.dart';
import 'signInPage_calibrationBefore.dart';
import 'navBarBottom.dart';
import 'cardWallet.dart';

class WalletPage extends StatelessWidget {
  WalletPage({Key? key}) : super(key: key);

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
                  color: Color(0xFFF7F2E3), size: 24),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Your Wallet".toUpperCase(),
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xffF7F2E3),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leadingWidth: 80,
        leading: Column(
          children: [
            SizedBox(
              height: 39,
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios,
                  color: Color.fromRGBO(247, 242, 227, 1), size: 24),
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
                  color: Color(0xFFF7F2E3),
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
                image:
                    NetworkImage('assets/images/bgImage_calibrationBefore.png'),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CardWallet(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardAnother(TitleText: "TOP-UP"),
                  CardAnother(TitleText: "tRANSFER"),
                  CardAnother(TitleText: "ADD A CARD"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CardAddress(),
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
