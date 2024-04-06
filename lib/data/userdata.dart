import 'package:rus_cars_list/data/data.dart';
class User{
  int id;
  String email;
  String password;
  String? photoUrl;
  User(this.id,this.email, this.password, this.photoUrl);
}

class UserHistory{
  User user;
  Cars car;
  DateTime purchaseDate;
  UserHistory(this.user,this.car, this.purchaseDate);
}

List<User> userList = [
  User(
    1,
    'dfdfs@dfs.re',
    '12345',
    'https://i1.sndcdn.com/avatars-000587083020-wanzo1-t500x500.jpg'

  )
];
List<UserHistory> userHistoryList = [
  UserHistory(userList[0], carsList[0], DateTime(1999,12,2)),

];