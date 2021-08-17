import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Image(
            image: AssetImage("assets/DolarLogo.png"),
          ),
        ));
  }
}
