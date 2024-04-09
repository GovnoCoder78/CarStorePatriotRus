import 'package:flutter/material.dart';
import 'package:rus_cars_list/pages/profile_pages.dart';
import 'package:rus_cars_list/widgetSamples/cart_list_sample.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:rus_cars_list/pages/product_page.dart';
import 'package:rus_cars_list/data/userdata.dart';
import 'package:rus_cars_list/pages/history_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int sum = 0;

  @override
  void initState() {
    super.initState();
    sum = summCost();
  }

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
            child: Container(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (BuildContext context, int index) {
                    return cart_list_sample(
                      carId: index,
                      pressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => CarCard(carOnCard: carsList[index])),
                        );
                      },
                    );
                  }
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: Text('${'Итого:'} ${sum.toString()}',
                      style: TextStyle(fontSize: 24),),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var counter = 0;
                          while (counter < cart.length) {
                            var existingCar = userHistoryList.where((element) => element.car.name == cart[counter].name);
                            if (existingCar.isNotEmpty) {
                              userHistoryList[userHistoryList.firstWhere((element) => element.car.name == cart[counter].name).car.id].car.count =
                                  userHistoryList[userHistoryList.firstWhere((element) => element.car.name == cart[counter].name).car.id].car.count +
                                      cart[counter].count;
                              var id = carsList.firstWhere((element) => element.name == cart[counter].name).id;
                              carsList[id].cartSelect = false;
                              counter++;
                            } else {
                              userHistoryList.add(UserHistory(cart[counter], DateTime.now()));
                              var id = carsList.firstWhere((element) => element.name == cart[counter].name).id;
                              carsList[id].cartSelect = false;
                              counter++;
                            }
                          }
                          cart.removeWhere((element) => true);
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HistoryPage())
                          );
                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Text("Перейти к оформлению", style: TextStyle(fontSize: 24),)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void updateSum() {
    setState(() {
      sum = summCost();
    });
  }

  int summCost() {
    int summCost = 0;
    for (int i = 0; i < cart.length; i++) {
      summCost += cart[i].count * cart[i].price;
    }
    return summCost;
  }
}
