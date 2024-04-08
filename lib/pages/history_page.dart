import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rus_cars_list/data/userdata.dart';
import 'package:rus_cars_list/widgetSamples/history_list.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key, required this.UserHistory});
  final UserHistory;
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("История",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(100, 220, 124, 124),
        centerTitle: true,
      ),
     //backgroundColor: const Color.fromARGB(100, 211, 211, 211),
      body: Container(
        child: ListView.builder(
          itemCount: userHistoryList.length,
          itemBuilder: (context, index) {
            return HistoryList(
              cardIndex: index,
            );
          },
        ),
      ),
    );
  }
}