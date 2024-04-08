import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/userdata.dart';
import 'package:rus_cars_list/pages/history_page.dart';

class HistoryList extends StatelessWidget {
  int cardIndex;
  HistoryList({super.key, required this.cardIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          color: const Color.fromARGB(100, 211, 211, 211),
          child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Image.network(userHistoryList[cardIndex].car.imagePath[0])
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [

                ],
              ),
            )
          ],
          ),

        )
    );
  }
}
