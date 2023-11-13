import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TutorBanner extends StatelessWidget {
  const TutorBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: double.infinity,
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(1, 1),
          colors: <Color>[
            Color.fromRGBO(12, 61, 223, 1),
            Color.fromRGBO(5, 23, 157, 1),
          ],
          tileMode: TileMode.mirror,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: Text(
              'Upcoming lesson',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Text(
                      'Wed, 18 Oct 23 00:00 - 00:25',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Text(
                      '(starts in 02:05:43)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.yellow,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.youtube,
                          size: 35,
                          color: Color.fromRGBO(12, 61, 223, 1),
                        ),
                        label: Text(
                          'Enter lesson room',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 113, 240, 1)),
                        )),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Total lesson time is 505 hours 25 minutes',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
