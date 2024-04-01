import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:rus_cars_list/widgetSamples/MyGridView.dart';
import 'package:rus_cars_list/pages/CarCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Отечественный автопром',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(100, 220, 124, 124),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(100, 211, 211, 211),
        body: Card(
            color: const Color.fromARGB(100, 211, 211, 211),
            child: Container(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20),
                  itemCount: carsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MyGridView(
                        car: carsList[index],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CarCard(carIndex: index)),
                          );
                        });
                  }),
            )));
  }
}
