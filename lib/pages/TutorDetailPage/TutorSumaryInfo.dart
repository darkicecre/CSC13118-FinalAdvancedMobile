import 'package:country_flags/country_flags.dart';
import 'package:final_advanced_mobile/pages/ReUse/Countries.dart';
import 'package:final_advanced_mobile/pages/ReUse/ExpandableText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

class TutorSumaryInfo extends StatefulWidget {
  const TutorSumaryInfo({super.key});

  @override
  State<TutorSumaryInfo> createState() => _TutorSumaryInfoState();
}

class _TutorSumaryInfoState extends State<TutorSumaryInfo> {
  String avatar =
      "https://sandbox.api.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1684484879187.jpg";
  String name = "Keegan";
  double rating = 4.1;
  int countRating = 121;
  String country = "TN";

  var countries = Countries();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  // margin: EdgeInsets.only(top: 20),
                  width: 110,
                  height: 110,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(avatar),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 10, bottom: 5),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      child: Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: rating,
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
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              child: Text(
                            "(" + countRating.toString() + ")",
                            style:
                                TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6)),
                          ))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 5),
                          child: CountryFlag.fromCountryCode(
                            country,
                            height: 17,
                            width: 22,
                          ),
                        ),
                        Text(
                          countries.lists[country] ?? '',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 5,left: 15),
            child:
            ReadMoreText(
              'I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.',
              trimLines: 2,
              colorClickableText: Colors.blue,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'More',
              trimExpandedText: 'Less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
            )
          )
        ],
      ),
    );
  }
}
