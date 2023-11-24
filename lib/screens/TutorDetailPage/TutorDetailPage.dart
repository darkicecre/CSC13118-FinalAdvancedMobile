import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/widgets/VideoPlayerController.dart';
import 'package:final_advanced_mobile/screens/TutorDetailPage/BookTutorTable.dart';
import 'package:final_advanced_mobile/screens/TutorDetailPage/TutorDetailInfo.dart';
import 'package:final_advanced_mobile/screens/TutorDetailPage/TutorInfoAction.dart';
import 'package:final_advanced_mobile/screens/TutorDetailPage/TutorSumaryInfo.dart';
import 'package:flutter/material.dart';

class TutorDetailPage extends StatefulWidget {
  const TutorDetailPage({super.key,
    required this.tutor
  });

  final Tutor tutor;

  @override
  State<TutorDetailPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorDetailPage> {
  @override
  Widget build(BuildContext context) {
    // final Tutor tutor = ModalRoute.of(context)!.settings.arguments as Tutor;
    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: ListView(
            children: [
              TutorSumaryInfo(tutor: widget.tutor,),
              TutorInfoAction(),
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 20,right: 20,bottom: 25),
                child: VideoPlayerScreen(),
              ),
              TutorDetailInfo(),
              BookTutorTable(),
            ],
          ),
        ),
    );
  }
}

