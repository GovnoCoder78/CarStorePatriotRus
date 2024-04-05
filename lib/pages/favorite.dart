import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rus_cars_list/data/data.dart';

import 'package:rus_cars_list/pages/product_page.dart';

class AppBarM extends StatelessWidget {
  const AppBarM({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Отечественный автопром',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      backgroundColor: const Color.fromARGB(100, 220, 124, 124),
      centerTitle: true,
    );
  }
}

// ignore: must_be_immutable
class FavoritePage extends StatefulWidget {
  FavoritePage({super.key});
  VoidCallback? onPressed;

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool isClick = false;

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
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Favorite',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: favorite.length,
                      itemBuilder: (context, index) {
                        if (favorite.isNotEmpty) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CarCard(carIndex: index,)));
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white12,
                                ),
                                padding: const EdgeInsets.only(top: 30),
                                child: Card(
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Image.network(
                                              carsList[index].imagePath[0])),
                                      Expanded(
                                        flex: 2,
                                        child: Text(favorite[index].name),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                            favorite[index].price.toString()),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          child: IconButton(
                                            icon: const Icon(Icons.favorite),
                                            color: isClick
                                                ? Colors.red
                                                : Color.fromARGB(0, 0, 0, 0),
                                            onPressed: () {
                                              favorite.remove(favorite[index]);
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          );
                        }
                        return null;
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
