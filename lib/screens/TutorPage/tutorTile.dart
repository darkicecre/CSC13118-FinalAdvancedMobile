import 'package:country_flags/country_flags.dart';
import 'package:final_advanced_mobile/constants/favourite.dart';
import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:final_advanced_mobile/screens/ReUse/ListChoiced.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorInfo.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TutorTile extends StatefulWidget {
  const TutorTile(
      {super.key,
        this.tutor = const Tutor("", "", "country", "id", "", 0, 0, 0,
            [],[]),
      });

  final Tutor tutor;
  @override
  State<TutorTile> createState() => _TutorTileState();
}

class _TutorTileState extends State<TutorTile> {
  bool _isFavourite = false;
  @override
  Widget build(BuildContext context) {
    for(final favourite in favourites){
      if(widget.tutor.id == favourite){
        setState(() {
          _isFavourite = true;
        });
        break;
      }
    }

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
                    backgroundImage: NetworkImage(widget.tutor.avatar),
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
                  icon: Icon(
                    _isFavourite ? Icons.favorite : Icons.favorite_outline,
                    color: Colors.blue,
                    size: 25.0,
                  ),
                  tooltip: 'Increase volume by 10',
                  onPressed: () {
                    if(_isFavourite){
                      favourites.remove(widget.tutor.id);
                    }
                    else{
                      favourites.add(widget.tutor.id);
                    }
                    setState(() {_isFavourite = !_isFavourite;});
                  },
                ),
              )
            ],
          ),
          TutorInfo(
              tutor: widget.tutor),
          Container(
            margin: EdgeInsets.only(left: 7, top: 7, bottom: 7),
            child: ListChoiced(lists: widget.tutor.specialist),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15, bottom: 25),
            child: Text(
              widget.tutor.bio,
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
