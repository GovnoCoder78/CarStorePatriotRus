import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rus_cars_list/pages/app_bar.dart';
import 'package:rus_cars_list/widgetSamples/cart_list_sample.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:rus_cars_list/pages/product_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MainAppBar(),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Card(
            color: Color.fromARGB(253, 255, 255, 255),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (BuildContext context, int index) {
                        return cart_list_sample(
                            carId: index,
                            pressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        CarCard(carIndex: index)),
                              );
                            });
                      }),
                ),
                // Container(
                //     padding: EdgeInsets.all(10),
                //     alignment: Alignment.bottomCenter,
                //     child: Row(children: [
                //       ElevatedButton(
                //           child: Container(
                //             child: Text('Купить'),
                //           ),
                //           onPressed: () => showDialog(
                //               context: (context),
                //               builder: (context) => Dialog(
                //                     child: Container(
                //                       width: MediaQuery.of(context)
                //                               .size
                //                               .width /
                //                           2,
                //                       height: MediaQuery.of(context)
                //                               .size
                //                               .height /
                //                           2,
                //                       decoration: BoxDecoration(
                //                         border: Border.all(width: 1),
                //                         borderRadius: BorderRadius.circular(10)
                //                       ),
                //                     ),
                //                   ))),
                //     ]))
              ],
            )));
  }
}
