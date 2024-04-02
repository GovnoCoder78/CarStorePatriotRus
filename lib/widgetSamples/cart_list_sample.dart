import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';

class cart_list_sample extends StatefulWidget {
  final VoidCallback pressed;
  final int carId;
  const cart_list_sample({super.key, required this.pressed, required this.carId});

  @override
  State<cart_list_sample> createState() => _cart_list_sampleState(pressed, carId);
}

class _cart_list_sampleState extends State<cart_list_sample> {
  final VoidCallback pressed;
  final int carId;
  _cart_list_sampleState(this.pressed, this.carId);
  @override
  Widget build(BuildContext context) {
    Cars addedCar = cart[carId];
    return GestureDetector(
      onTap: pressed,
      child: Container(
      child: Column(
        children: [
         Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Row(
          children: [
            Expanded(
                child: Image.network(addedCar.imagePath[0]),
                flex: 1,
            ),
            Expanded(
                child: Column(
                 children: [
                   Text(addedCar.name),
                   RichText(
                       textAlign: TextAlign.left,
                       text: TextSpan(
<<<<<<< HEAD:lib/widgetSamples/cart_list_sample.dart
                         text: addedCar.price.toString(),
                         style: TextStyle(
=======
                         text: favoriteCar.price.toString(),
                         style: const TextStyle(
>>>>>>> foloved:lib/widgetSamples/ListViewSample.dart
                             fontSize: 24,
                             color: Colors.white
                         ),
                         children: [
                           const TextSpan(text: ' ₽', style: TextStyle(
                               fontSize: 24,
                               color: Colors.white
                           )
                           )
                         ],
                       )
                   ),
                 ],
                )
            )
          ],
        ),
      ),
           flex: 8
                 ),
           Expanded(
             child: Container(
             alignment: Alignment.centerLeft,
             child: Row(
               children: [
                 
               ],
             ),
           ),
             flex: 1
           )
                 ]
      ),
      )
    );
  }
}