import 'package:flutter/material.dart';
import 'package:rus_cars_list/pages/auth_page.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? gender;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
        centerTitle: true,
      ),
      body: Center(
    child: Container(
    width: MediaQuery.of(context).size.width*0.9,
    height: MediaQuery.of(context).size.height*0.75,
    decoration: BoxDecoration(
    border: Border.all(), borderRadius: BorderRadius.circular(25)),
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    child: Column(
          children: [
          Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      labelText: 'Имя',
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      labelText: 'Фамилия',
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      labelText: 'Электронная почта',
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      labelText: 'Номер телефона',
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      labelText: 'Пароль',
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: TextFormField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      labelText: 'Подтвердите пароль',
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: ListTile(
                                            title: Text('Мужчина',
                                              style: TextStyle(
                                                  fontSize: 16
                                              ),
                                            ),
                                            leading: Radio(
                                                value: 'Male',
                                                groupValue: gender,
                                                onChanged: (value){
                                                  setState(() {
                                                    gender = value.toString();
                                                  });
                                                }
                                            )
                                        ),
                                      ),
                                      Expanded(
                                          child: ListTile(
                                              title: Text('Женщина',
                                                style: TextStyle(
                                                    fontSize: 16
                                                ),
                                              ),
                                              leading:  Radio(
                                                  value: 'female',
                                                  groupValue: gender,
                                                  onChanged: (value){
                                                    setState(() {
                                                      gender = value.toString();
                                                    });
                                                  }
                                              )
                                          )
                                      ),
                                    ],
                                  ),
                                )
                            ),
                            Expanded(
                                child: ListTile(
                                    title: Text('Я согласен на обработку персональных данных',
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    leading: Checkbox(
                                      value: this.value,
                                      onChanged: (value){
                                        setState(() {
                                          this.value = !this.value;
                                        });
                                      },
                                    )
                                )
                            ),
                            Expanded(
                              child: Container(
                                child: ElevatedButton(onPressed:() => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (BuildContext context) =>
                                      LogInPage())
                                  )
                                },
                                  child: Text('Создать акккаунт',
                                    style: TextStyle(
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      flex: 19,
                    ),
                    Expanded(child: Container(),
                      flex: 1,)
                  ],
                ),
              ),
          )
      ),

    );
  }
}