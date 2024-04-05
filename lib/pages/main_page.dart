import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:rus_cars_list/pages/auth_page.dart';
import 'package:rus_cars_list/widgetSamples/main_page_gridview.dart';
import 'package:rus_cars_list/pages/product_page.dart';

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
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogInPage()));
                },
                icon: Icon(Icons.login))
          ],
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
                                    CarCard(carIndex: index)),
                          );
                        });
                  }),
            )));
  }
}
