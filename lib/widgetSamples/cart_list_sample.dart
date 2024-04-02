import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';

class CarListSample extends StatefulWidget {
  final VoidCallback pressed;
  final int carId;
  const CarListSample({super.key, required this.pressed, required this.carId});

  @override
  State<CarListSample> createState() => CarListSampleState(pressed, carId);
}

class CarListSampleState extends State<CarListSample> {
  final VoidCallback pressed;
  final int carId;
  CarListSampleState(this.pressed, this.carId);
  @override
  Widget build(BuildContext context) {
    Cars addedCar = cart[carId];
    return GestureDetector(
        onTap: pressed,
        child: Container(
          child: Column(children: [
            Expanded(
              flex: 8,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(addedCar.imagePath[0]),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(addedCar.name),
                        RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: addedCar.price.toString(),
                              style: const TextStyle(
                                  fontSize: 24, color: Colors.white),
                              children: [
                                TextSpan(
                                    text: ' ₽',
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white))
                              ],
                            )),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [],
                ),
              ),
            )
          ]),
        ));
  }
}
