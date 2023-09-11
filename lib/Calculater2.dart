import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practice2/CalcButton.dart';

class Caculater extends StatefulWidget{
  static const routeName='Calculater2';

  @override
  State<Caculater> createState() => _CaculaterState();
}

class _CaculaterState extends State<Caculater> {
  String result='';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(result,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                ],
              ),
            ),
            Expanded(
              child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 CalcButton(text:'7',clicked: onDigitClick),
                  CalcButton(text:'8',clicked: onDigitClick),
                  CalcButton(text:'9',clicked: onDigitClick),
                  CalcButton(text:'*',clicked: onOperatorClick),
                  CalcButton(text:'C',clicked: onClearClick),

                ],
              ),
            ),
            Expanded(
              child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcButton(text:'4',clicked: onDigitClick),
                  CalcButton(text:'5',clicked: onDigitClick),
                  CalcButton(text:'6',clicked: onDigitClick),
                  CalcButton(text:'/',clicked: onOperatorClick),
                  CalcButton(text:'del',clicked: onDeleteClick),

                ],
              ),
            ),
            Expanded(
              child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcButton(text:'1',clicked: onDigitClick),
                  CalcButton(text:'2',clicked: onDigitClick),
                  CalcButton(text:'3',clicked: onDigitClick),
                  CalcButton(text:'+',clicked: onOperatorClick),
                  CalcButton(text:'√x',clicked: Square),

                ],
              ),
            ),
            Expanded(
              child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcButton(text:'.',clicked: onDigitClick),
                  CalcButton(text:'0',clicked: onDigitClick),
                  CalcButton(text:'=',clicked: onEqualClick),
                  CalcButton(text:'-',clicked: onOperatorClick),
                  CalcButton(text:'%',clicked:onOperatorClick),

                ],
              ),
            ),

          ],
        ) ,
      ),
    );
  }

void onDigitClick(text){
    result+=text;
    setState(() {

    });
}
//10
//+
//5
String operator='';
  String lhs='';
void onOperatorClick(clickedOperator){
  if(operator.isEmpty){
    lhs=result;

  }else{
    String rhs=result;
    Calculate(lhs,rhs,operator);
  } operator=clickedOperator;
  result='';
  setState(() {

  });
}
  String Calculate(String lhs, String rhs, String operator) {
    double num1=double.parse(lhs);
    double num2=double.parse(rhs);

    double res=0.0;
    if(operator=='+'){
      res=num1+num2;
    }else if(operator=='-'){
      res=num1-num2;
    }else if(operator=='/'){
      res=num1/num2;
    }else if(operator=='*'){
      res=num1*num2;
    }else if(operator=='%'){
      res=num1%num2;
    // }else if(operator=='√x'){
    //   res=sqrt(num2);
    }return res.toString();
  }

  void onEqualClick(text){
  String rhs=result;
  result=Calculate(lhs, rhs, operator);
  lhs='';
  operator='';
  setState(() {

  });
  }
  void onClearClick(text){
  result='';
  operator='';
  lhs='';
  setState(() {

  });
  }
  onDeleteClick(text){
  result=result.substring(0,result.length-1);
  setState(() {

  });
  }
  void Square(text){
    double result2=double.parse(result);
  double rec=sqrt(result2);
  result=rec.toString();
  setState(() {

  });
  }
}


