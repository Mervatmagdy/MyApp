import 'package:flutter/material.dart';


class Game_Button extends StatefulWidget{
  String text;
  Function onClicked;
  int index;
  Game_Button({required this.text,required this.index ,required this.onClicked});

  @override
  State<Game_Button> createState() => _Game_ButtonState();
}

class _Game_ButtonState extends State<Game_Button> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
          onPressed: (){
        widget.onClicked(widget.index);
setState(() {

});
      }, child:Text(widget.text,style: TextStyle(fontSize: 30),)),
    ));
  }
}