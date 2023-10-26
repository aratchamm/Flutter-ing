import 'package:flutter/material.dart';
import 'package:test/SignInFormField.dart';
import 'signInPage_calibrationBefore.dart';
import 'navBarBottom.dart';
import 'cardSocials.dart';

class SocialPage extends StatelessWidget {
  SocialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xffF7F2E3),
        elevation: 0,
        titleSpacing: -30,
        centerTitle: true,
        title: Column(
          children: [
            RotationTransition(
              turns: AlwaysStoppedAnimation(270 / 360),
              child: Icon(Icons.arrow_back_ios,
                  color: Color(0xff526c3f), size: 24),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff526c3f),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Text(
                  "socials".toUpperCase(),
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffF7F2E3),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
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
                  color: Color(0xff526c3f), size: 24),
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff526c3f),
                        size: 30,
                      ),
                    ),
                    Icon(
                      Icons.camera,
                      color: Color(0xff526c3f),
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 1300,
              decoration: const BoxDecoration(
                color: Color(0xffF7F2E3),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image(
                    image: NetworkImage(
                        'assets/images/leaderboard_socialPage.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Row(
                    children: [
                      IconButton(
                        // Adjust the scale factor as needed
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image(
                            image: NetworkImage(
                                'assets/images/icons/UPCOMING EVENTS.png'),
                          ),
                        ),
                        iconSize: 50,
                        onPressed: () {},
                      ),
                      Text(
                        "UPCOMING EVENTS",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xff114817),
                        ),
                      ),
                    ],
                  ),
                ),
                CardSocialText(
                    accountName: "@bIKERSunite",
                    textContent: "seE YOU ALL AT 15.00",
                    timePost: "JULY 23, 2023",
                    imageAccount:
                        "assets/images/socials/profile/stk105263cor.jpg"),
                CardSocialImage(
                    accountName: "@สสส.",
                    textContent:
                        "COME JOIN THIS EVENT AND RAISE MONEY FOR CHARITY auGUST 12 2023 \ncLICK LINK BELOW TO REGISTER",
                    timePost: "JUN 3, 2023",
                    titleText: "Bike For Mom",
                    imagePath: "assets/images/socials/images/bikeformom.jpg",
                    imageAccount: "assets/images/socials/profile/สสส.png"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffF7F2E3),
        elevation: 0.0,
        child: NavBarBottom(),
      ),
    );
  }
}
