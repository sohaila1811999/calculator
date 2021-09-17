import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String buttonText;
  Function onButtonClickCallBack;
  CalculatorButton(this.buttonText,this.onButtonClickCallBack);

  @override
  Widget build(BuildContext context) {

    return
      Expanded(
          child:
          Container(
              margin: EdgeInsets.all(1),
              child: ElevatedButton(onPressed:onButtonClick,
                  child: Text(buttonText,
                    style: TextStyle(fontSize: 28),)
              )
          )
      );
  }

  void onButtonClick(){
    onButtonClickCallBack(this.buttonText);
  }
}