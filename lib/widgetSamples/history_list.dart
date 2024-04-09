import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/userdata.dart';
import 'package:rus_cars_list/pages/history_page.dart';
import 'package:intl/intl.dart';

class HistoryList extends StatelessWidget {
  int cardIndex;
  final dateFormatter = DateFormat('dd-MM-yyyy HH:mm');
  HistoryList({super.key, required this.cardIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height*0.12,
          color: const Color.fromARGB(100, 211, 211, 211),
          child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Image.network(userHistoryList[cardIndex].car.imagePath[0],)
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(userHistoryList[cardIndex].car.name,
                  style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold),
                ),
                Text('${"Количество товаров: "}${userHistoryList[cardIndex].car.count}',
                  style: TextStyle(fontSize: 16),
                ),
                Text('${"Дата заказа: "}${dateFormatter.format(userHistoryList[cardIndex].purchaseDate)}',
                  style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text('${userHistoryList[cardIndex].finalCost}${'₽'}',
                    style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold),),
                ))
          ],
          ),

        )
    );
  }
}
