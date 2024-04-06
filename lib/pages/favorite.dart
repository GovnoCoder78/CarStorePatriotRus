import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:rus_cars_list/pages/app_bar.dart';
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
      appBar: const  MainAppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
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
                        
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: const Color.fromARGB(255, 82, 82, 82)),
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 255, 255, 255),
                              
                            ),
                            
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
