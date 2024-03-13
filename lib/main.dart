import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/Cars.dart';
import 'package:rus_cars_list/widgetSamples/MyGridView.dart';
import 'package:rus_cars_list/pages/CarCard.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {'/carCard': (BuildContext context) {
      //   return CarCard(carIndex: ,); //провести сюда индекс машины с массива
      //   }
      // },
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
  MyHomePage({super.key});

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
                  carName: carsList[index].name,
                  desc: carsList[index].description,
                  cost: carsList[index].price,
                  img: carsList[index].imagePath[0],
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

