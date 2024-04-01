import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';

class AppBarM extends StatelessWidget {
  const AppBarM({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Отечественный автопром',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Color.fromARGB(100, 220, 124, 124),
      centerTitle: true,
    );
  }
}

class FavoritePage extends StatefulWidget {
  FavoritePage({super.key});
  VoidCallback? onPressed;
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Отечественный автопром',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(100, 220, 124, 124),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Favorite',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: favorite.length,
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image.network(
                                        carsList[index].imagePath[0])),
                                Expanded(
                                  flex: 1,
                                  child: Text(favorite[index].name),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(favorite[index].price.toString()),
                                ),
                              ],
                            ));
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
