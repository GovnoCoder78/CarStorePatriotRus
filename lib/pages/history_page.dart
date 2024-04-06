import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rus_cars_list/data/userdata.dart';
import 'package:rus_cars_list/pages/app_bar.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key,required this.UserHistory});
  final UserHistory;
  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: Container(child: ListView(),),
    );
  }
}

