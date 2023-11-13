import 'package:final_advanced_mobile/screens/ReUse/CommentWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:number_paginator/number_paginator.dart';

class TutorReviewList extends StatefulWidget {
  const TutorReviewList({super.key});

  @override
  State<TutorReviewList> createState() => _TutorReviewListState();
}

class Comment {
  final String avatar;
  final String name;
  final String time;
  final double rating;
  final String comment;
  Comment(this.avatar, this.name, this.time, this.rating, this.comment);
}

class _TutorReviewListState extends State<TutorReviewList> {
  List<Comment> comments = [
    new Comment(
        "https://sandbox.api.lettutor.com/avatar/f569c202-7bbf-4620-af77-ecc1419a6b28avatar1686033849227.jpeg",
        "Pham Hoang Hai",
        "17 hours ago",
        4.5,
        "good job"),
    new Comment(
        "https://sandbox.api.lettutor.com/avatar/eba0e698-40da-49e3-b384-40e50f7cb5e2avatar1683171475280.jpg",
        "Tran Minh Huy",
        "4 months ago",
        3.9,
        "jzzzzz not bad"),
    new Comment(
        "https://sandbox.api.lettutor.com/avatar/c525b857-cc25-436a-9921-4965fbaf9febavatar1685982762314.jpg",
        "Vu Tran123",
        "5 months ago",
        5,
        "hhhhhhh"),
  ];

  int _currentPage = 3;
  final NumberPaginatorController _controller = NumberPaginatorController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        comments.length + 1,
        (int index) {
          return index != comments.length ? CommentWidget(
            avatar: comments[index].avatar,
            name: comments[index].name,
            time: comments[index].time,
            rating: comments[index].rating,
            comment: comments[index].comment,
          ):
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
          ;
        },
      ).toList(),
    );
  }
}
