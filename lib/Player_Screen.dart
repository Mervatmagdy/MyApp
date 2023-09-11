import 'package:flutter/material.dart';
import 'package:practice2/game_Board.dart';

class Player_Screen extends StatelessWidget {
  static const routeName = 'Player_Screen';
  String player1='';
  String player2='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (text) {
                player1=text;
              },
                decoration: InputDecoration(label: Text('Player1'))),
            TextField(
              onChanged: (text) {
                player2=text;
              },
                decoration: InputDecoration(label: Text('Player2'))),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed(Game_Board.routeName,arguments:PlayerData(player1: player1, player2: player2));
            }, child: Text('Let\'s Play'))
          ],
        ),
      ),
    );
  }
}
class PlayerData{
  String player1;
  String player2;
  PlayerData({required this.player1,required this.player2});
}
