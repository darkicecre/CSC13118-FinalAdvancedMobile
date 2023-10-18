import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Comment extends StatelessWidget {
  const Comment({super.key,
    this.avatar= "https://sandbox.api.lettutor.com/avatar/f569c202-7bbf-4620-af77-ecc1419a6b28avatar1686033849227.jpeg",
    this.name = "Pham Hoang Hai",
    this.time = "17 hours ago",
    this.rating = 4.5,
    this.comment = "good job"
  });
  final String avatar ;
  final String name ;
  final String time ;
  final double rating ;
  final String comment ;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: 70,
            height: 70,
            child: CircleAvatar(
              backgroundImage: NetworkImage(avatar),
            ),
          ),
        ),
        Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 16,
          child: Column(
            children: [
              Row(
                children: [
                  Text(name+"    ",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.45)
                    ),),
                  Text(time,
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(204, 204, 204, 1)
                    ),),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 5),
                child: RatingBar.builder(
                  itemSize: 15,
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
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(comment,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.85)
                  ),),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
