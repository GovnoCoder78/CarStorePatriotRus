import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';


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
        automaticallyImplyLeading: false,
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
                  child: ListView.builder(
                      itemCount: favorite.length,
                      itemBuilder: (context, index) {
                        return Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Image.network(
                                        carsList[index].imagePath[0])),
                                Expanded(
                                    flex: 1,
                                    child: SizedBox()),
                                Expanded(
                                  flex: 5,
                                  child: Text(favorite[index].name,
                                  style: TextStyle(fontSize: 16),),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text('${favorite[index].price.toString()}${'₽'}',
                                  style: TextStyle(fontSize: 16),),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                  child: IconButton(
                                    icon: const Icon(Icons.favorite),
                                    color: carsList[index].isFavorite ? Colors.red : Colors.grey,
                                    onPressed: () {
                                      favorite.remove(favorite[index]);
                                    },
                                  ),
                                  )
                            )
                            ]
                            )
                        );
                      }))

      ),
    );
  }
}
