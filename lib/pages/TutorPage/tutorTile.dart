import 'package:country_flags/country_flags.dart';
import 'package:final_advanced_mobile/pages/ReUse/Countries.dart';
import 'package:final_advanced_mobile/pages/ReUse/ListChoiced.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorInfo.dart';
import 'package:final_advanced_mobile/pages/TutorPage/tutorList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TutorTile extends StatefulWidget {
  const TutorTile(
      {super.key,
      this.avatar = '',
      this.bio = '',
      this.country = '',
      this.name = '',
      this.id = '',
      this.price = 0,
      this.rating = 0,
      this.schedulesTimes = 0});

  final String avatar;
  final String bio;
  final String country;
  final String id;
  final String name;
  final int price;
  final double rating;
  final int schedulesTimes;
  @override
  State<TutorTile> createState() => _TutorTileState();
}

class _TutorTileState extends State<TutorTile> {
  var countries = Countries();
  List<String> lists = [
    'English for Business',
    'English for kids',
    'STARTERS',
    'Conversational',
    'MOVERS',
    'FLYERS',
    'KET',
    'PET',
    'IELTS',
    'TOEFL',
    'TOEIC'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Color.fromRGBO(0, 0, 0, 0.16))),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 70,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 70,
                  height: 70,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(widget.avatar),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 70,
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
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
              )
            ],
          ),
          TutorInfo(
              country: widget.country,
              name: widget.name,
              rating: widget.rating),
          Container(
            margin: EdgeInsets.only(left: 7, top: 7, bottom: 7),
            child: ListChoiced(lists: lists),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15, bottom: 25),
            child: Text(
              widget.bio,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 10, bottom: 5),
            child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                      width: 1, // the thickness
                      color: Color.fromRGBO(
                          24, 114, 255, 1) // the color of the border
                      ),
                ),
                icon: FaIcon(
                  FontAwesomeIcons.clipboardCheck,
                  size: 14,
                  color: Color.fromRGBO(24, 114, 255, 1),
                ),
                label: Text(
                  'Book',
                  style: TextStyle(color: Color.fromRGBO(24, 114, 255, 1)),
                )),
          )
        ],
      ),
    );
  }
}
