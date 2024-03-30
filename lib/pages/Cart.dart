import 'package:flutter/material.dart';
import 'package:rus_cars_list/main.dart';
import 'package:rus_cars_list/data/Cars.dart';


class Cart extends StatefulWidget {
  VoidCallback onPressed;
  int carId;
  Cart({super.key, required this.carId, required this.onPressed});

  @override
  State <Cart> createState() => _CartState(carId, onPressed);
}

class _CartState extends State<Cart> {
  final int carId;
  VoidCallback onPressed;
  bool isClick = true;
  _CartState(this.carId, this.onPressed);

  @override
  Widget build(BuildContext context) {
    Cars car = carsList[carId];
    return GestureDetector(
        onTap: onPressed,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromARGB(100, 255, 255, 255),
                borderRadius: BorderRadius.circular(6)
            ),
            child: Column(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                          child: Image.network(car.imagePath[0],
                            fit: BoxFit.fill,)
                      )
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Container(
                                    child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(car.name,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 16
                                              ),
                                            ),
                                          ),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              child: RichText(
                                                text: TextSpan(
                                                  text: car.price.toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                  children: [
                                                    TextSpan(text: ' ₽', style: TextStyle(fontSize: 16))
                                                  ],
                                                ),
                                              )
                                          )
                                        ]
                                    )
                                )
                            ),
                            Expanded(child: IconButton(
                              icon: Icon(Icons.favorite),
                              color: isClick ? Colors.red : Colors.grey,
                              onPressed: () => setState(() => this.isClick = !this.isClick),
                            ),
                              flex: 1,
                            )
                          ]
                      )
                  )
                ]
            )
        )
    );
  }
}
