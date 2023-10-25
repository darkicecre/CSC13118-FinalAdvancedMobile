import 'package:country_flags/country_flags.dart';
import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:final_advanced_mobile/pages/ReUse/Countries.dart';
import 'package:final_advanced_mobile/pages/TutorDetailPage/TutorDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TutorInfo extends StatefulWidget {
  const TutorInfo({
    super.key,
    this.tutor = const Tutor("avatar", "bio", "country", "id", "name", 0, 0, 0),
    this.isHideRating = false,
    this.isShowActionDirectMessage = false,
  });

  final Tutor tutor;
  final bool isHideRating;
  final bool isShowActionDirectMessage;

  @override
  State<TutorInfo> createState() => _TutorInfoState();
}

class _TutorInfoState extends State<TutorInfo> {
  var countries = Countries();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 25),
          child: InkWell(
            child: Text(
              widget.tutor.name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TutorDetailPage(),settings: RouteSettings(
                  arguments: widget.tutor
                )),
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 2),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, right: 5),
                child: CountryFlag.fromCountryCode(
                  widget.tutor.country,
                  height: 17,
                  width: 22,
                ),
              ),
              Text(
                countries.lists[widget.tutor.country] ?? '',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        widget.isHideRating
            ? SizedBox.shrink()
            : Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 25, top: 5),
                child: RatingBar.builder(
                  itemSize: 15,
                  initialRating: widget.tutor.rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
        widget.isShowActionDirectMessage
            ? Container(
          alignment: Alignment.topLeft,
              height: 32,
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.only(left: 12),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.message,
                    size: 20,
                    color: Colors.blue,
                  ),
                  label: Text(
                    'Direct Message',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
            )
            : SizedBox.shrink()
      ],
    );
  }
}
