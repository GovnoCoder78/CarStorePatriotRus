import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/userdata.dart';
import 'package:rus_cars_list/main.dart';
import 'package:rus_cars_list/pages/history_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Учетная запись",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      backgroundColor: const Color.fromARGB(100, 220, 124, 124),
      centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(100, 211, 211, 211),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                        child: Align(
                          alignment: Alignment.center,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(userList[0].photoUrl),
                              maxRadius: 50,
                    ))),
                    Expanded(
                      flex: 8,
                        child: Column(
                          children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height/70,
                        ),
                        Text("Имя, фамилия",
                        style: TextStyle(fontSize: 18),
                        ) ,
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${userList[0].firstName} ${userList[0].lastName}',
                          style: TextStyle(fontSize: 22,
                          fontWeight: FontWeight.bold),
                        )
                            ]
                        )
                    )
                  ],
                )),
            // Expanded(
            //     flex:1,
            //     child: SizedBox(),
            // ),
            Expanded(
              flex: 1,
                child:
                ElevatedButton(
                    onPressed: () => Navigator.push(
                        context, 
                        MaterialPageRoute(
                            builder: (BuildContext context) => HistoryPage(UserHistory: userHistoryList[0]))),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.85 ,
                        child: Text("Ваши заказы",
                        style: TextStyle(fontSize: 24),)
                      )
                  )
              ),
            Expanded(
              flex: 1,
                child: Align(
              alignment: Alignment.centerLeft,
                child: Text("Учетная информация",
              style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
            )
            ),
            Expanded(
                flex: 10,
                child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Телефон",
                  style: TextStyle(fontSize: 14),
                  ),
                  Text(userList[0].phoneNumber,
                  style: TextStyle(fontSize: 18)
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/60,
                  ),
                  Text("Email",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(userList[0].email,
                      style: TextStyle(fontSize: 18)
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/60,
                  ),
                  Text("Пол",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(userList[0].gender,
                      style: TextStyle(fontSize: 18)
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/60,
                  ),
                  Text("День рождения",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(userList[0].birthday,
                    style: TextStyle(fontSize: 18)
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/60,
                  ),
                  TextButton(
                      onPressed: null,
                      child: Text("выйти из аккаунта",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red
                      ),
                      )
                  )
                    ],
              ),
            )
      )
          ],
        ),
      ),
    );
  }
}