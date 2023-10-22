import 'package:final_advanced_mobile/pages/TutorPage/tutorTile.dart';
import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

class TutorList extends StatefulWidget {
  const TutorList({super.key});

  @override
  State<TutorList> createState() => _TutorListState();
}

class Tutor {
  final String avatar;
  final String bio;
  final String country;
  final String id;
  final String name;
  final int price;
  final double rating;
  final int schedulesTimes;
  const Tutor(this.avatar, this.bio, this.country, this.id, this.name, this.price,
      this.rating, this.schedulesTimes);
}

class _TutorListState extends State<TutorList> {
  List<Tutor> tutors = [
    new Tutor(
        "https://sandbox.api.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1684484879187.jpg",
        "I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.",
        "TN",
        "4d54d3d7-d2a9-42e5-97a2-5ed38af5789a",
        "Keegan",
        50000,
        4.116666666666666,
        373),
    new Tutor(
        "https://variety.com/wp-content/uploads/2021/04/Avatar.jpg",
        "Recusandae dignissimos ut commodi et iste qui eum quos",
        "GR",
        "4d54d3d7-d2a9-42e5-97a2-5ed38af5789a",
        "Adelia Rice",
        0,
        3.8,
        373),
    new Tutor(
        "https://i5.walmartimages.ca/images/Enlarge/841/666/6000205841666.jpg",
        "Rem neque quidem aliquam magni quasi et",
        "VN",
        "4d54d3d7-d2a9-42e5-97a2-5ed38af5789a",
        "Chad Ankunding",
        20,
        4.9,
        373)
  ];

  @override
  Widget build(BuildContext context) {
    int _numPages = 4;
    int _currentPage = 3;
    final NumberPaginatorController _controller = NumberPaginatorController();


    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Recommended Tutors",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Column(
            children: List<Widget>.generate(
              tutors.length,
              (int index) {
                return TutorTile(
                    avatar: tutors[index].avatar,
                    bio: tutors[index].bio,
                    id: tutors[index].id,
                    name: tutors[index].name,
                    country: tutors[index].country,
                    price: tutors[index].price,
                    rating: tutors[index].rating,
                    schedulesTimes: tutors[index].schedulesTimes);
              },
            ).toList(),
          ),
          SizedBox(height: 10,),
          NumberPaginator(
            numberPages: 4,
            initialPage: 2,
            showPrevButton: true,
            showNextButton: true,
            config:
            const NumberPaginatorUIConfig(
                mode: ContentDisplayMode.numbers,
                buttonSelectedBackgroundColor: Color.fromRGBO(24, 114, 255, 1),
                buttonUnselectedForegroundColor: Color.fromRGBO(24, 114, 255, 1),
                buttonShape: RoundedRectangleBorder(

                )
            ),
            onPageChange: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          )
        ],
      ),
    );
  }
}
