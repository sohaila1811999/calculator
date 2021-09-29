import 'package:calculator/Calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(title:'new flutter app' ,
    theme: ThemeData(
      primarySwatch: Colors.orange,

    ),
    home: Scaffold(

    appBar: AppBar(title: Text('Calculator'),) ,
    // body:SimpleCounterWidget()
    body:CalculatorWidget()),


    );
}
}


