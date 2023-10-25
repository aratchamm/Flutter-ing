import 'package:flutter/material.dart';

class NavBarBottom extends StatelessWidget {
  const NavBarBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.black,
          height: 0,
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.network('assets/images/icons/profile.png'),
              onPressed: () {},
              iconSize: 50,
              padding: EdgeInsets.all(20),
            ),
            IconButton(
              icon: Image.network('assets/images/icons/commu.png'),
              onPressed: () {},
              iconSize: 50,
              padding: EdgeInsets.all(20),
            ),
            IconButton(
              icon: Image.network('assets/images/icons/cart.png'),
              onPressed: () {},
              iconSize: 50,
              padding: EdgeInsets.all(20),
            ),
            IconButton(
              icon: Image.network('assets/images/icons/setting.png'),
              onPressed: () {},
              iconSize: 50,
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
      ],
    );
  }
}
