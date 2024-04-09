import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rus_cars_list/pages/create_user_page.dart';
import 'package:rus_cars_list/pages/main_page.dart';
import 'package:rus_cars_list/main.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.7,
          height: MediaQuery.of(context).size.width*0.7,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                              children: <Widget> [
                                Expanded(
                                  child:Container(
                                      child: TextFormField(
                                        textAlign: TextAlign.left,
                                        decoration: InputDecoration(
                                          labelText:  'Email',
                                          border: OutlineInputBorder(),
                                          prefixIcon: Icon(Icons.email),
                                        ),
                                      )
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                    child: Container(),
                                    flex: 1
                                ),
                                Expanded(
                                  child:Container(
                                      child: TextFormField(
                                        textAlign: TextAlign.left,
                                        decoration: InputDecoration(
                                            labelText:  'Пароль',
                                            border: OutlineInputBorder(),
                                            prefixIcon: Icon(Icons.vpn_key)
                                        ),
                                      )
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: TextButton(
                                      child:  Text('Еще нет аккаунта? Зарегистрироваться',
                                        style: TextStyle(
                                            fontSize: 12
                                        ),
                                      ),
                                      onPressed:(){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (BuildContext context) => SignUp())
                                        );
                                      },
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                    child: Container(
                                      child: ElevatedButton(
                                        onPressed:(){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (BuildContext context) => MyHomePage(index: 0))
                                          );
                                        },
                                        child: Text('Войти',
                                          style: TextStyle(
                                              fontSize: 30
                                          ),
                                        ),
                                      ),
                                    ),
                                    flex: 2
                                ),
                              ]
                          ),
                        ),
                        flex: 4,
                      )
              ],
              
      )
    )
    )
    )
    );
  }
}