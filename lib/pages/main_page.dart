import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:rus_cars_list/pages/app_bar.dart';
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
  final theme = Theme.of(context).textTheme;

    return Scaffold(
        appBar: MainAppBar(),
        backgroundColor: Color.fromARGB(99, 255, 255, 255),
        body: Card(
            color: Color.fromARGB(98, 255, 255, 255),
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
