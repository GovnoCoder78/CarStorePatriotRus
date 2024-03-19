import 'package:flutter/material.dart';
import 'package:rus_cars_list/main.dart';
import 'package:rus_cars_list/pages/CarCard.dart';

class BottomBarSample extends StatefulWidget {
  const BottomBarSample({super.key});

  @override
  State<BottomBarSample> createState() => _BottomBarSampleState();
}

class _BottomBarSampleState extends State<BottomBarSample> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      ],
      selectedItemColor: Colors.red
    );
  }
}

