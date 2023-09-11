import 'package:flutter/material.dart';
import 'package:practice2/Calculate.dart';
import 'package:practice2/Counter.dart';
import 'package:practice2/Player_Screen.dart';
import 'package:practice2/game_Board.dart';

import 'Calculater2.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:Player_Screen.routeName ,
    routes:{
      Counter.routeName:(context) => Counter(),
      Calculater.routeName:(context) => Calculater(),
      Caculater.routeName:(context) => Caculater(),
      Game_Board.routeName:(context) => Game_Board(),
      Player_Screen.routeName:(context) => Player_Screen()
    },
  ));
}