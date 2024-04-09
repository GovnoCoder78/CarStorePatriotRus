import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:rus_cars_list/pages/cart.dart';


class cart_list_sample extends StatefulWidget {
  final VoidCallback pressed;
  final int carId;
  cart_list_sample(
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
          height: MediaQuery
              .of(context)
              .size
              .width / 2,
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
                    flex: 8),
                Expanded(
                    child: Container(
                      color: const Color.fromARGB(100, 255, 255, 255),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Expanded(
                            child: IconButton(
                                icon: const Icon(Icons.favorite),
                                color: Colors.red,
                                onPressed: null
                            ),
                            flex: 1,
                          ),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      cart.remove(cart[carId]);
                                    });
                                    deleteCar();
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
                              onQtyChanged: (val) {
                                cart[carId].count = val;
                                print(cart[carId].count);
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
                    flex: 2
                )
              ]
          ),
        )
    );
  }

  void deleteCar(){
    for(int i = 0; i < cart.length - 1; i++){
      if(cart[i].id == 0){
        if(cart.length == 1){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Cart()));
          break;
        }
        cart[i] = cart[i + 1];
        cart.remove(cart[i + 1]);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Cart()));
      }
    }
    // if(cart.isEmpty){
    //   Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: (context) => Cart()));
    // }
  }
}
//
// void arrayIsEmpty(){
//
// }


// кнопка для истории покупок


