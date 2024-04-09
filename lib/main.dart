import 'package:flutter/material.dart';
import 'package:rus_cars_list/pages/main_page.dart';
import 'package:rus_cars_list/pages/favorite.dart';
import 'package:rus_cars_list/pages/cart.dart';
import 'package:rus_cars_list/pages/profile_pages.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(index: 0,),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int index;
  MyHomePage({super.key, required this.index});

  @override
  State<MyHomePage> createState() => MyHomePageState(index);
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  MyHomePageState(this.selectedIndex);
  final openPage = [
    MainPage(),
    FavoritePage(),
    Cart(),
    UserPage()
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
