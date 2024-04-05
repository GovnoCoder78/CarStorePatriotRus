import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  
                ],
              ),
        ),
      ),
    );
  }
}
