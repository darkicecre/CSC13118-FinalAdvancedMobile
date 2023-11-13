import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: 'gift',
              onPressed: () {},
              shape: CircleBorder(),
              backgroundColor: Color.fromRGBO(128, 128, 128, 1),
              child: FaIcon(
                FontAwesomeIcons.gift,
                size: 35,
                color: Color.fromRGBO(235, 235, 235, 1),
              ),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(
              heroTag: 'comment',
              onPressed: () {},
              shape: CircleBorder(),
              backgroundColor: Color.fromRGBO(128, 128, 128, 1),
              child: FaIcon(
                FontAwesomeIcons.commentDots,
                size: 35,
                color: Color.fromRGBO(235, 235, 235, 1),
              ),
            )
          ],
        )
    );
  }
}
