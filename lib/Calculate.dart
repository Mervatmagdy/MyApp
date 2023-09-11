import 'package:flutter/material.dart';
import 'package:practice2/CalculaterButton.dart';

class Calculater extends StatefulWidget{
  static const routeName='home';

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  String rectext='';

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(),
       body:Column(
         children: [
           Expanded(child: Row(children: [Text(rectext,style: TextStyle(fontSize: 25),)],)),
           Expanded(
             child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,

               children: [
              CalculaterButton(text:'7',onButtonClick: onDigitClick ),
               CalculaterButton(text: '8',onButtonClick: onDigitClick ),
               CalculaterButton(text:'9',onButtonClick: onDigitClick  ),
               CalculaterButton(text:'*' ,onButtonClick: onOperatorClick),
             ],

             ),


             ),
           Expanded(
             child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,children: [
               CalculaterButton(text:'4' ,onButtonClick: onDigitClick ),
               CalculaterButton(text: '5',onButtonClick: onDigitClick ),
               CalculaterButton(text:'6',onButtonClick: onDigitClick  ),
               CalculaterButton(text:'/',onButtonClick: onOperatorClick ),
             ],

             ),


           ),
           Expanded(
             child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,children: [
               CalculaterButton(text:'1',onButtonClick: onDigitClick  ),
               CalculaterButton(text: '2',onButtonClick: onDigitClick ),
               CalculaterButton(text:'3',onButtonClick: onDigitClick  ),
               CalculaterButton(text:'+' ,onButtonClick: onOperatorClick),
             ],

             ),


           ),
           Expanded(
             child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,children: [
               CalculaterButton(text:'.',onButtonClick: onDigitClick ),
               CalculaterButton(text: '0',onButtonClick: onDigitClick ),
               CalculaterButton(text:'=' ,onButtonClick: onEqualClick),
               CalculaterButton(text:'-',onButtonClick: onOperatorClick ),
             ],

             ),


           ),
         ],
       )  ,
     ),
   );

  }
  String lns='';
  String operator='';
  void onDigitClick(text){
    rectext+=text;
    setState(() {
    });
  }
  void onOperatorClick(String ClickedOperator){
    if(operator.isEmpty){
      lns=rectext;

    }else{
      String rhs=rectext;
      Calulate(lns,rhs,operator);
    }operator=ClickedOperator;
    rectext='';
  setState(() {
    
  });
  }
  
  String Calulate(String lns,String rhs,String operator){
    double num1=double.parse(lns);
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
    }return res.toString();
  }
  void onEqualClick(text){
    String rhs=rectext;
   rectext= Calulate(lns, rhs, operator);
   lns='';
   operator='';
   setState(() {

   });
  }
}