
import 'package:final_advanced_mobile/models/DateRange.dart';
import 'package:final_advanced_mobile/models/Tutor.dart';

List<Tutor> tutorLists = sortFavourite([
  new Tutor(
      "https://sandbox.api.lettutor.com/avatar/4d54d3d7-d2a9-42e5-97a2-5ed38af5789aavatar1684484879187.jpg",
      "I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.",
      "TN",
      "1",
      "Keegan",
      50000,
      4.116666666666666,
      623,
      [new DateRange(DateTime(2023,11,24,1,0), DateTime(2023,11,24,3,30))],
      ['English for kids', 'KET', 'PET', 'IELTS']
  ),
  new Tutor(
      "https://variety.com/wp-content/uploads/2021/04/Avatar.jpg",
      "Recusandae dignissimos ut commodi et iste qui eum quos",
      "GR",
      "2",
      "Adelia Rice",
      0,
      3.8,
      445,
      [new DateRange(DateTime(2023,11,25,1,0), DateTime(2023,11,25,3,30))],
      ['TOEFL','Conversational', 'English for Business']
  ),
  new Tutor(
      "https://i5.walmartimages.ca/images/Enlarge/841/666/6000205841666.jpg",
      "Rem neque quidem aliquam magni quasi et",
      "VN",
      "3",
      "Chad Ankunding",
      20,
      4.9,
      373,
      [new DateRange(DateTime(2023,11,24,11,0), DateTime(2023,11,24,13,30))],
      ['FLYERS','English for kids']
  ),
  new Tutor(
      "https://api.app.lettutor.com/avatar/83802576-70fe-4394-b27a-3d9e8b50f1b7avatar1649512219387.jpg",
      "Hello! My name is April Baldo, you can just call me Teacher April. I am an English teacher and currently teaching in senior high school. I have been teaching grammar and literature for almost 10 years. I am fond of reading and teaching literature as one way of knowing one’s beliefs and culture. I am friendly and full of positivity. I love teaching because I know each student has something to bring on. Molding them to become an individual is a great success.",
      "PH",
      "4",
      "April Baldo",
      19,
      4.3,
      121,
      [new DateRange(DateTime(2023,11,25,11,0), DateTime(2023,11,25,13,30))],
      ['FLYERS','English for kids']
  ),
  new Tutor(
      "https://api.app.lettutor.com/avatar/e9e3eeaa-a588-47c4-b4d1-ecfa190f63faavatar1632109929661.jpg",
      "Hi, My name is Jill I am an experienced English Teacher from Philippine. I would like to share my enthusiasm with the learners in this platform. I've been working with diverse learners of all levels for many years. I am greatly passionate about about profession. I love teaching because I can help others improve their skills and it gives me joy and excitement meeting different learners around the world. In my class I worked with wonderful enthusiasm and positivity, and I'm happy to focus on my learner's goal.",
      "PH",
      "5",
      "Jill Leano",
      22,
      4.4,
      223,
      [new DateRange(DateTime(2023,11,25,12,0), DateTime(2023,11,25,14,30))],
      ['TOEFL','TOEIC','English for kids']
  ),
  new Tutor(
      "https://api.app.lettutor.com/avatar/8c4e58c4-e9d1-4353-b64d-41b573c5a3e9avatar1632284832414.jpg",
      "I was a customer service sales executive for 3 years before I become an ESL teacher I am trained to deliver excellent service to my clients so I can help you with business English dealing with customers or in sales-related jobs and a lot more, I also love to teach beginner, intermediate and advance I speak slowly and clearly so that the student can easily follow my instructions and pronunciation. In my class, I want environment-friendly fun and engaging I have many activities designed to help your enthusiasm in learning the language. I'm so excited to meet you in one of my classes let us have fun while learning English. See you there.",
      "TW",
      "6",
      "Joan Gacer",
      46,
      4.7,
      523,
      [new DateRange(DateTime(2023,11,24,11,0), DateTime(2023,11,24,13,30)),new DateRange(DateTime(2023,11,25,11,0), DateTime(2023,11,25,13,30))],
      ['TOEFL','TOEIC','English for kids']
  ),
]);

List<String> listChoices = [
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

List<String> listItemTiles = [
  'English for Business',
  'English for kids',
  'STARTERS',
  'Conversational',
  'MOVERS',
  'FLYERS',
  'KET',
  'PET',
  'IELTS',
  'TOEFL',
  'TOEIC'
];