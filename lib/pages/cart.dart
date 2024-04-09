import 'package:flutter/material.dart';
import 'package:rus_cars_list/pages/profile_pages.dart';
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
          automaticallyImplyLeading: false,
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
        body: Stack(
          alignment: Alignment.bottomCenter,
            children: [
              Card(
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
        ),
              Container(
                height:  MediaQuery.of(context).size.height * 0.12,
                child: Column(
              children: [
                Expanded(
                  flex: 1,
                child:Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text('${'Итого:'}${summCost().toString()}',
                  style: TextStyle(fontSize: 24),),
                ),
                ),
              Expanded(
                flex: 3,
                  child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => UserPage()),
    ),
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.85 ,
                      child:
                      Text("Перейти к оформлению",
                        style: TextStyle(fontSize: 24),)
                  )
              )
              )
              )
    ]
    )
              )
    ]
        )
    );
  }
  void update(bool fromList){
    if(fromList) setState(() {});
  }
  int summCost(){
    int summCost = 0;
    for(int i = 0; i < cart.length; i++){
      summCost = cart[i].count * cart[i].price;
    }
    setState(() {

    });
    return summCost;
  }
}



