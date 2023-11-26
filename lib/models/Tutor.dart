import 'package:final_advanced_mobile/constants/favourite.dart';
import 'package:final_advanced_mobile/models/DateRange.dart';

class Tutor {
  final String avatar;
  final String bio;
  final String country;
  final String id;
  final String name;
  final int price;
  final double rating;
  final int schedulesTimes;
  final List<DateRange> availableDate;
  final List<String> specialist;
  const Tutor(this.avatar, this.bio, this.country, this.id, this.name, this.price,
      this.rating, this.schedulesTimes,this.availableDate,this.specialist);
}

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
