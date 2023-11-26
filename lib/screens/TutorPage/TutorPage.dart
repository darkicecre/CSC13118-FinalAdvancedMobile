import 'package:final_advanced_mobile/constants/favourite.dart';
import 'package:final_advanced_mobile/constants/tutors.dart';
import 'package:final_advanced_mobile/models/Tutor.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyAppBar.dart';
import 'package:final_advanced_mobile/screens/ReUse/MyFloatingActionButton.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorBanner.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorList.dart';
import 'package:final_advanced_mobile/screens/TutorPage/tutorSearch.dart';
import 'package:flutter/material.dart';

class TutorPage extends StatefulWidget {
  const TutorPage({super.key});

  @override
  State<TutorPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorPage> {
  List<Tutor> tutors = tutorLists;
  TextEditingController _tutorNameController = TextEditingController();
  TextEditingController _dateRangeController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final List<String> _nationalOptions = [
      'Foreign Tutor',
      'Vietnamese Tutor',
      'Native English Tutor'
    ];
    final List<String> _specialistOptions = [
      'All',
      'English for kids',
      'English for Business',
      'Conversational',
      'STARTERS',
      'MOVERS',
      'FLYERS',
      'KET',
      'PET',
      'IELTS',
      'TOEFL',
      'TOEIC'
    ];
    List<String> _nationalList = _nationalOptions;
    String _specialist = 'All';

    final sortFavourite = (List<Tutor> tutors){
      List<Tutor> _tutorFavourites = [];
      List<Tutor> _tutorDontFavourites = [];
      for(final tutor in tutors){
        bool isFavourites = false;
        for(final id in favourites){
          if(tutor.id == id){
            _tutorFavourites.add(tutor);
            isFavourites = true;
            break;
          }
        }
        if(!isFavourites){
          _tutorDontFavourites.add(tutor);
        }
      }
      return [..._tutorFavourites,..._tutorDontFavourites];
    };

    final search = (){
      var name = _tutorNameController.text;
      var nationals = _nationalList;
      var date = _dateController.text!="" ? DateTime.parse(_dateController.text + " 00-00-00"): null;
      var timeStart = _dateRangeController.text!="" ? _dateRangeController.text.substring(0,5): "";
      var timeEnd = _dateRangeController.text!="" ? _dateRangeController.text.substring(_dateRangeController.text.length-5,_dateRangeController.text.length):"";
      var specialistSearch = _specialist;
      List<Tutor> _tutors = [];
      List<Tutor> tutorDatas = tutorLists;
      for(final tutor in tutorDatas){
        bool check = true;
        if(name!=''){
          if(!tutor.name.contains(name)){
            check=false;
            continue;
          }
        }
        switch(tutor.country){
          case 'VN':
            if(!nationals.contains('Vietnamese Tutor')){
              check=false;
              continue;
            }
            break;
          case 'EN':
            if(!nationals.contains('Native English Tutor')){
              check=false;
              continue;
            }
            break;
          default:
            if(!nationals.contains('Foreign Tutor')){
              check=false;
              continue;
            }
            break;
        }
        if(date!=null){
          bool flagAvailable = false;
          for(final available in tutor.availableDate){
            if(date.compareTo(available.start)>=0&&date.compareTo(available.end)<=0){
              flagAvailable = true;
              break;
            }
          }
          if(!flagAvailable){
            check = false;
            continue;
          }
        }
        if(_dateRangeController.text!=""){
          bool flagAvailable = false;
          for(final available in tutor.availableDate){
            var startAvailable = available.start.toString().substring(11,16);
            var endAvailable = available.end.toString().substring(11,16);
            if(startAvailable==timeStart && endAvailable == timeEnd){
              flagAvailable = true;
              break;
            }
          }
          if(!flagAvailable){
            check = false;
            continue;
          }
        }
        if(specialistSearch!='All'){
          bool flagAvailable = false;
          for(final specialist in tutor.specialist){
            if(specialist==specialistSearch){
              flagAvailable = true;
              break;
            }
          }
          if(!flagAvailable){
            check = false;
            continue;
          }
        }

        if(check){
          _tutors.add(tutor);
        }
      }
      setState(() {
        tutors = sortFavourite(_tutors);
      });
    };

    final VoidCallback _onTap = () {
      search();
    };

    final ValueSetter _nationalChange = (val) {
      _nationalList = val;
      _onTap();
    };
    final ValueSetter _specialistChange = (val) {
      _specialist = val;
      _onTap();
    };

    final VoidCallback _resetSearch = (){
      _tutorNameController.text = '';
      _dateController.text = '';
      _dateRangeController.text = '';
      _nationalList = _nationalOptions;
      _specialist = 'All';
      _onTap();
    };



    return Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: ListView(
            children: [
              TutorBanner(),
              TutorSearch(
                tutorNameController: _tutorNameController,
                onTap: _onTap,
                nationalOptions: _nationalOptions,
                nationalChange: _nationalChange,
                dateController: _dateController,
                dateRangeController: _dateRangeController,
                specialistOptions: _specialistOptions,
                specialistChange: _specialistChange,
                resetSearch: _resetSearch,
              ),
              TutorList(tutors: tutors,)
            ],
          ),
        ),
        floatingActionButton: MyFloatingActionButton());
  }
}
