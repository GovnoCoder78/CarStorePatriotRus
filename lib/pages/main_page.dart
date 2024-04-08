import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:rus_cars_list/widgetSamples/main_page_gridview.dart';
import 'package:rus_cars_list/pages/product_page.dart';
import 'package:rus_cars_list/widgetSamples/cart_list_sample.dart';

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
          actions: [
            ElevatedButton(
            child: Text("Войти",
              style: TextStyle(fontSize: 14,
              fontWeight: FontWeight.bold)
            ),
            onPressed: null,
          )],
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
                    return MainPageGridView(
                        car: carsList[index],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CarCard(carOnCard: carsList[index],)),
                          );
                        });
                  }),
            )));
  }
}
