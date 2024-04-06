import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rus_cars_list/pages/main_page.dart';

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
          
          width: MediaQuery.of(context).size.width/2,
          height: MediaQuery.of(context).size.width/2,
          
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              
              children: [
                Expanded(child: Text('Вход', style: theme.labelLarge)),
                const Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                  prefixIcon: Icon(Icons.login),
                  labelText: 'Логин',
                ))),
                const Expanded(child: TextField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: 'Пароль',))),
                
                Expanded(
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainPage()),
                          );
                  }, 
                  child: const Text('Войти')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
