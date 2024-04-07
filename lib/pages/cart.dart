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
          title: const Text('Корзина',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Color.fromARGB(100, 220, 124, 124),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(100, 211, 211, 211),
        body: Card(
            color: Color.fromARGB(100, 211, 211, 211),
            child:Container(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (BuildContext context, int index){
                    return cart_list_sample(
                        carId: index,
                        pressed:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) => CarCard(carOnCard: carsList[index])),
                          );
                        },
                    );
                  }
              ),
            )
        )
    );
  }
  void update(bool fromList){
    if(fromList) setState(() {});
  }
}


