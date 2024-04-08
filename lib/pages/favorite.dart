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
      backgroundColor: const Color.fromARGB(100, 220, 124, 124),
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
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Избранное',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(100, 220, 124, 124),
        centerTitle: true,
      ),
        backgroundColor: const Color.fromARGB(100, 211, 211, 211),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: favorite.length,
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            padding: const EdgeInsets.only(top: 30),
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
                                  child: Text(favorite[index].price.toString()),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: const Icon(Icons.favorite),
                                    color: isClick ? Colors.red : Colors.grey,
                                    onPressed: () {
                                      favorite.remove(favorite[index]);
                                    },
                                  ),
                                )
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
