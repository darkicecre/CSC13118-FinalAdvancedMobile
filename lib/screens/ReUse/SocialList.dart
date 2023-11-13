import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialList extends StatelessWidget {
  const SocialList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {},
            iconSize: 35,
            icon: FaIcon(
              FontAwesomeIcons.facebook,
              size: 35,
              color: Colors.blue,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.google,
              size: 35,
              color: Colors.red,
            ),
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.mobileScreenButton,
              size: 35,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
