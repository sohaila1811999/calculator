import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorResultText extends StatelessWidget{
  String text;
  CalculatorResultText(this.text);
  @override
  Widget build(BuildContext context) {

    return


         Container(

             child: Text(text,style: TextStyle(fontSize: 32)));
    }
}