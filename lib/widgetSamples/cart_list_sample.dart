import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:rus_cars_list/data/userdata.dart';

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
    final theme = Theme.of(context).textTheme;
    return GestureDetector(
        onTap: pressed,
        child: SizedBox(
          //padding: EdgeInsets.only(bottom: 20),
          height: 200,
          child: Column(children: [
            Expanded(
              flex: 8,
              child: SizedBox(
                //color: const Color.fromARGB(100, 255, 255, 255),
                //alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.network(
                        addedCar.imagePath[0],
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          addedCar.name,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '${addedCar.price.toString()} ${"₽"}',
                          style: TextStyle(fontSize: 22),
                        )
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
                    Expanded(
                      flex: 1,
                      child: IconButton(
                          icon: const Icon(Icons.favorite),
                          color: Colors.red,
                          onPressed: null),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              cart.remove(cart[carId]);
                            });
                          },
                          icon: const Icon(Icons.delete)),
                    ),
                    Expanded(
                      flex: 2,
                      child: InputQty(
                        minVal: 1,
                        initVal: 1,
                        maxVal: 1000,
                        steps: 1,
                        onQtyChanged: (val) {
                          print(val);
                        },
                        qtyFormProps: QtyFormProps(enableTyping: false),
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: ElevatedButton(
                              onPressed: () => showDialog(
                                  context: (context),
                                  builder: (context) => Dialog(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2,
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Text('Покупка',style: theme.labelLarge,),
                                              ),
                                              Expanded(child: TextButton(onPressed: (){
                                                userHistoryList.add(UserHistory(userList[0], carsList[carId], DateTime.now()));
                                                Navigator.pop(context);
                                                cart.remove(cart[0]);// добавить remove from cart
                                              },
                                              child: Text('Купить'),),),
                                            ],
                                          ),
                                        ),
                                      )),
                              child: Text("Купить")),
                        )),
                  ],
                ),
              ),
            )
          ]),
        ));
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