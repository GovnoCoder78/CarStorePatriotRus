import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';

class ListViewSample extends StatefulWidget {
  final VoidCallback pressed;
  final int carId;
  const ListViewSample({super.key, required this.pressed, required this.carId});

  @override
  State<ListViewSample> createState() => _ListViewSampleState(pressed, carId);
}

class _ListViewSampleState extends State<ListViewSample> {
  final VoidCallback pressed;
  final int carId;
  _ListViewSampleState(this.pressed, this.carId);
  @override
  Widget build(BuildContext context) {
    Cars favoriteCar = cart[carId];
    return GestureDetector(
      onTap: pressed,
      child: Container(
        alignment: Alignment.center,
        child: Row(
          children: [
            Expanded(
                child: Image.network(favoriteCar.imagePath[0]),
                flex: 1,
            ),
            Expanded(
                child: Column(
                 children: [
                   Text(favoriteCar.name),
                   RichText(
                       textAlign: TextAlign.left,
                       text: TextSpan(
                         text: favoriteCar.price.toString(),
                         style: const TextStyle(
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
    );
  }
}
