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
              flex: 8,
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
                          Text(addedCar.name,
                          style: TextStyle(fontSize: 22,),
                          ),
                          Text('${addedCar.price.toString()} ${"₽"}',
                          style: TextStyle(fontSize: 22),)
                        ],
                      ))
                    ],
                  ),
                ),
                ),
            Expanded(
              flex: 2,
                child: Container(
                  color: const Color.fromARGB(100, 255, 255, 255),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                        child: IconButton(
                          icon: const Icon(Icons.favorite),
                          color: Colors.red,
                          onPressed: null
                      ),
                        
                      ),
                      Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            cart.remove(cart[carId]);
                            });
                          },
                        icon: const Icon(Icons.delete)
                      ),
                      flex: 1
                      ),
                      Expanded(
                        child: InputQty(
                          minVal: 1,
                          initVal: 1,
                          maxVal: 1000,
                          steps: 1,
                          onQtyChanged: (val){
                            print(val);
                          },
                        qtyFormProps: QtyFormProps(enableTyping: false),
                      ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: ElevatedButton(onPressed: null,
                        child: Text("Купить")
                        )
                        ),
                      flex: 4,
                      )
                    ],
                  ),
                ),
                
            )
          ]
          ),
        )
    );
  }

void update(){
    setState(() {});
}
}

//кнопка для истории покупок
// ElevatedButton(onPressed: null,
// child: Container(
// child: Column(
// children: [
// Expanded(child: Text("Покупки"),
// flex: 1,
// ),
// Expanded(child: Icon(Icons.shopping_bag),
// flex: 2,
// )
// ],
// ),
// ))