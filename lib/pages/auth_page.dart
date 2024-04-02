import 'package:flutter/material.dart';
import 'package:rus_cars_list/pages/main_page.dart';
class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(25)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(child: Text('Вход')),
              Expanded(
                child: TextFormField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    labelText: 'Логин',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.login)
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.key))),
              ),
              Expanded(
                  child: TextButton(
                    
                onPressed: (){MaterialPageRoute(builder: (BuildContext context) => MainPage());},
                child: Text('Войти'),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
