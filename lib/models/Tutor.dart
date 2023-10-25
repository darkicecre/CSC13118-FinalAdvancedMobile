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

List<Tutor> tutorLists = [
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