import 'package:rus_cars_list/data/data.dart';
class User{
  int id;
  String email;
  String phoneNumber;
  String password;
  String photoUrl;
  String firstName;
  String? lastName;
  String gender;
  String birthday;
  User(this.id, this.phoneNumber, this.email, this.password, this.photoUrl, this.firstName, this.lastName, this.gender, this.birthday);
}

class UserHistory{
  Cars car;
  DateTime purchaseDate;
  int finalCost;
  UserHistory(this.car, this.purchaseDate, this.finalCost);
}

List<User> userList = [
  User(
      1,
      '7 922 745 37 18',
      'dfdfs@dfs.re',
      '12345',
      'https://kartinkof.club/uploads/posts/2022-03/1648403302_18-kartinkof-club-p-mem-shakalnoe-kachestvo-19.jpg',
      'Александр',
      'Молотков',
      'самоходная установка мста с',
      '18.08.2005'
  )
];
List<UserHistory> userHistoryList = [
  UserHistory(carsList[0], DateTime(1999,12,2), 1200000),

];

