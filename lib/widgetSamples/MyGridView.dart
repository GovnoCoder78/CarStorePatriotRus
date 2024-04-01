import 'package:flutter/material.dart';
import 'package:rus_cars_list/pages/MainPage.dart';
import 'package:rus_cars_list/data/data.dart';

class MyGridView extends StatefulWidget {
  VoidCallback onPressed;
  Cars car;
  MyGridView({super.key, required this.car, required this.onPressed});

  @override
  State<MyGridView> createState() => _MyGridViewState(car, onPressed);
}

class _MyGridViewState extends State<MyGridView> {
  Cars car;
  VoidCallback onPressed;
  bool isClick = false;
  _MyGridViewState(this.car, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color.fromARGB(100, 255, 255, 255),
                borderRadius: BorderRadius.circular(6)),
            child: Column(children: [
              Expanded(
                  flex: 5,
                  child: Container(
                      child: Image.network(
                    car.imagePath[0],
                    fit: BoxFit.fill,
                  ))),
              Expanded(
                  flex: 2,
                  child: Row(children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                            child: Column(children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              car.name,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                text: TextSpan(
                                  text: car.price.toString(),
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const TextSpan(
                                        text: ' ₽',
                                        style: TextStyle(fontSize: 16))
                                  ],
                                ),
                              ))
                        ]))),
                    Expanded(
                      child: IconButton(
                        icon: Icon(Icons.favorite),
                        color: isClick ? Colors.red : Colors.grey,
                        onPressed: () {
                          bool isUnic = true;
                          setState(() => isClick = !isClick);
                          for(int i = 0; i < favorite.length; ++i){
                            if(i > 0 && favorite[i].id == favorite[i-1].id) isUnic = false;
                          }
                          if(isUnic) favorite.add(car);
                          

                        },
                      ),
                      flex: 1,
                    )
                  ]))
            ])));
  }
}
