import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:input_quantity/input_quantity.dart';

class cart_list_sample extends StatefulWidget {
  final VoidCallback pressed;
  final int carId;
  const cart_list_sample(
      {super.key, required this.pressed, required this.carId});

  @override
  State<cart_list_sample> createState() =>
      _cart_list_sampleState(pressed, carId);
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
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          height: MediaQuery.of(context).size.width / 2,
          child: Column(
              children: [
            Expanded(
                child: Container(
                  color: const Color.fromARGB(100, 255, 255, 255),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.network(addedCar.imagePath[0],
                        fit: BoxFit.fill,),
                        flex: 1,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Text(addedCar.name),
                          Text('${addedCar.price.toString()} ${"₽"}',
                          style: TextStyle(fontSize: 22),)
                        ],
                      ))
                    ],
                  ),
                ),
                flex: 8),
            Expanded(
                child: Container(
                  color: const Color.fromARGB(100, 255, 255, 255),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.favorite),
                        color: Colors.red,
                        onPressed: null
                      ),
                      IconButton(
                        onPressed: null,
                        icon: const Icon(Icons.delete)
                      ),
                      InputQty(
                        minVal: 0,
                        initVal: 0,
                        maxVal: 1000,
                        steps: 1,
                        onQtyChanged: (val){
                          print(val);
                        },
                        qtyFormProps: QtyFormProps(enableTyping: false),
                      )
                    ],
                  ),
                ),
                flex: 2
            )
          ]
          ),
        )
    );
  }
}
