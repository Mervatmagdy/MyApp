import 'package:flutter/material.dart';

class CalculaterButton extends StatelessWidget{
  String text;
  Function onButtonClick;
  CalculaterButton({required this.text,required this.onButtonClick});
  @override
  Widget build(BuildContext context) {
   return Expanded(
     child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,children: [
       Expanded(
           child: ElevatedButton
             (onPressed: (){
               onButtonClick(text);
           },
       child:Text(text,style: TextStyle(fontSize:25),),
             style: ButtonStyle(
                 backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),)),

     ],

     ),
   );
  }

}