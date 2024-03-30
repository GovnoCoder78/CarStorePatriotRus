import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/Cars.dart';
import 'package:rus_cars_list/widgetSamples/MyGridView.dart';
import 'package:rus_cars_list/pages/CarCard.dart';
import 'package:rus_cars_list/widgetSamples/BottomBarSample.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Российские автомобили',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarSample(),
      appBar: AppBar(
        title: const Text('Отечественный автопром',
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
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 20
            ),
            itemCount: carsList.length,
            itemBuilder: (BuildContext context, int index){
              return MyGridView(
                  car: carsList[index],
                  onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => CarCard(carIndex: index)),
                  );
                }
              );
            }
        ),
      )
      )
    );
  }
}

