import 'package:flutter/material.dart';

class NavBarBottom extends StatelessWidget {
  const NavBarBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 2.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Image.asset('assets/images/icons/profile.png'),
            onPressed: () {},
            iconSize: 50,
            padding: EdgeInsets.all(20),
          ),
          IconButton(
            icon: Image.asset('assets/images/icons/commu.png'),
            onPressed: () {},
            iconSize: 50,
            padding: EdgeInsets.all(20),
          ),
          IconButton(
            icon: Image.asset('assets/images/icons/cart.png'),
            onPressed: () {},
            iconSize: 50,
            padding: EdgeInsets.all(20),
          ),
          IconButton(
            icon: Image.asset('assets/images/icons/setting.png'),
            onPressed: () {},
            iconSize: 50,
            padding: EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }
}
