import 'package:flutter/material.dart';
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
        appBar: AppBar(
          title: const Text('Отечественный автопром',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: const Color.fromARGB(100, 220, 124, 124),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(100, 211, 211, 211),
        body: Card(
            color: const Color.fromARGB(100, 211, 211, 211),
            child:ListView.builder(
            
                itemCount: cart.length,
                itemBuilder: (BuildContext context, int index){
                  return CarListSample(
                      carId: index,
                      pressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => CarCard(carIndex: index)),
                        );
                      }
                  );
                }
            )
        )
    );
  }
}

