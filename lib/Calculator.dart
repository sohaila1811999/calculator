import 'package:flutter/material.dart';

import 'CalculatorButton.dart';



  class CalculatorWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
  return CalculatorState();
  }
  }

  class CalculatorState extends State<CalculatorWidget>{

  String resultTv='';
  @override
  Widget build(BuildContext context) {

  return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Expanded(child: Text(resultTv,style: TextStyle(fontSize: 32),)),
  Expanded(
  child: Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
  CalculatorButton('7',onDigitClick),
  CalculatorButton('8',onDigitClick),
  CalculatorButton('9',onDigitClick),
  CalculatorButton('*',onOperatorClick),
  ],
  ),
  ),
  Expanded(
  child: Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
  CalculatorButton('4',onDigitClick),
  CalculatorButton('5',onDigitClick),
  CalculatorButton('6',onDigitClick),
  CalculatorButton('/',onOperatorClick),
  ],
  ),
  ),
  Expanded(
  child: Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
  CalculatorButton('1',onDigitClick),
  CalculatorButton('2',onDigitClick),
  CalculatorButton('3',onDigitClick),
  CalculatorButton('+',onOperatorClick),
  ],
  ),
  ),
  Expanded(
  child: Row(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
  CalculatorButton('.',onDigitClick),
  CalculatorButton('0',onDigitClick),
  CalculatorButton('=',onEqualClick),
  CalculatorButton('-',onOperatorClick),
  ],
  ),
  ),
  ],
  );
  }

  void onDigitClick(String buttonText){
  setState(() {
  resultTv+=buttonText;
  });
  }
  String num='';
  String operator='';

  void onOperatorClick(String clickedOperator){
  if(operator.isEmpty){
  num = resultTv;
  }else {
  num = calculate(num,operator,resultTv);
  }
  operator = clickedOperator;
  setState(() {
  resultTv ='';
  });
  }

  void onEqualClick(String text){
  num = calculate(num,operator,resultTv);
  setState(() {
  resultTv = num;
  operator = '';
  num = '';
  });
  }
  String calculate(String LHS,String operator,String RHS){
  double n1 = double.parse(LHS);
  double n2 = double.parse(RHS);
  double res = 0.0;
  if(operator=='+'){
  res = n1+n2;
  }else if(operator=='-'){
  res = n1-n2;
  }else if (operator=='*'){
  res = n1*n2;
  }else if (operator=='/'){
  res  = n1/n2;
  }
  return res.toString();
  }
  }
