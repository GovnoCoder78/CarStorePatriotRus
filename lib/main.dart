import 'package:flutter/material.dart';
import 'package:rus_cars_list/pages/main_page.dart';
import 'package:rus_cars_list/pages/favorite.dart';
import 'package:rus_cars_list/pages/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Российские автомобили',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(0, 255, 185, 185),
        textTheme:  TextTheme(
          labelLarge: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
          labelMedium: TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Roboto'),
          labelSmall: TextStyle(color: Colors.black, fontSize: 14, fontFamily: 'Roboto'),
          bodyLarge: TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'Roboto'),
          bodyMedium: TextStyle(color: Colors.black, fontSize: 10, fontFamily: 'Roboto'),
          bodySmall: TextStyle(color: Colors.black, fontSize: 8, fontFamily: 'Roboto'),
          titleLarge: TextStyle(color: Colors.black, fontSize: 24, fontFamily: 'Times New Roman'),
          titleMedium: TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Times New Roman'),
          titleSmall: TextStyle(color: Colors.black, fontSize: 14, fontFamily: 'Times New Roman'),
        )
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final openPage = [
    const MainPage(),
    FavoritePage(),
    const Cart(),
    const MainPage()
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      body: openPage[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => selectedIndex = index),
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль')
        ],
        selectedItemColor: Colors.red,
      ));
}
