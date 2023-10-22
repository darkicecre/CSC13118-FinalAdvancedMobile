import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TutorInfoAction extends StatefulWidget {
  const TutorInfoAction({super.key});

  @override
  State<TutorInfoAction> createState() => _TutorInfoActionState();
}

class _TutorInfoActionState extends State<TutorInfoAction> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.heart,
                  size: 25,
                  color: Colors.blue,
                ),
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {});
                },
              ),
              Text("Favorite",style: TextStyle(color: Colors.blue),)
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.circleExclamation,
                  size: 25,
                  color: Colors.blue,
                ),
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {});
                },
              ),
              Text("Report",style: TextStyle(color: Colors.blue))
            ],
          ),
        )
      ],
    );
  }
}
