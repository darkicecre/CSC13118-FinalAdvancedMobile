import 'package:final_advanced_mobile/screens/ReUse/OrientationSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DemoList extends StatefulWidget {
  const DemoList({ super.key ,
    this.imgAsset = "",
    this.typeImg = "svg",
    this.title = "Schedule",
    this.description = "Here is a list of the sessions you have booked\nYou can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours",
    this.type = "Column"
  });

  final String type;
  final String imgAsset;
  final String typeImg;
  final String title;
  final String description;

  @override
  State<DemoList> createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {

  @override
  Widget build(BuildContext context) {
    return  OrientationSwitcher(
        isColumn: widget.type=="Column",
        children: [
          Container(
            margin: EdgeInsets.only(top:30,left:30),
            alignment: Alignment.centerLeft,
              child: SvgPicture.asset(widget.imgAsset, width: 120,height: 120,)
          ),
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom:20,left:30),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize:30,
                  fontWeight:FontWeight.w600,
                  color:Color.fromRGBO(0,0,0,0.85),
                ),
              )
          ),
          widget.description!="" ? Container(
              margin: EdgeInsets.only(left: 30,right: 25),
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Color.fromRGBO(0,0,0,0.1),
                      width: 4.0,
                    ),
                  )
              ),
              child: Text(
                  widget.description,
                  style: TextStyle(
                    fontSize:18,
                    color:Color.fromRGBO(0,0,0,0.85),

                  )
              )
          ) : SizedBox.shrink()
        ]
    );
  }
}