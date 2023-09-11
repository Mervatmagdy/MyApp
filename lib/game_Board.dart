import 'package:flutter/material.dart';
import 'package:practice2/Player_Screen.dart';
import 'package:practice2/game_Button.dart';

class Game_Board extends StatefulWidget{
  static const routeName='game_board';

  @override
  State<Game_Board> createState() => _Game_BoardState();
}

class _Game_BoardState extends State<Game_Board> {
  int score1=0;
  int score2=0;
  List<String>text=[
    '','','',
    '','','',
    '','',''
  ];

  @override
  Widget build(BuildContext context) {
    PlayerData args=ModalRoute.of(context)?.settings.arguments as PlayerData;
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
          // leading:BackButton(
          //   onPressed:(){
          //
          //   },
          // ),
          title:Text('XO Game'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('${args.player1} (X)',style:TextStyle(fontWeight: FontWeight.bold,fontSize:23)),
                  Text(score1.toString(),style:TextStyle(fontWeight: FontWeight.bold,fontSize:23))
                ],),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('${args.player2} (O)',style:TextStyle(fontWeight: FontWeight.bold,fontSize:23)),
                  Text(score2.toString(),style:TextStyle(fontWeight: FontWeight.bold,fontSize:23))
                ],),
              ],),
            ),
            Expanded(
              child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 Game_Button(text:text[0],index: 0,onClicked:onButtonClicked ),
                  Game_Button(text:text[1],index: 1,onClicked:onButtonClicked  ),
                  Game_Button(text:text[2],index: 2,onClicked:onButtonClicked ),
                ],
              ),
            ),
            Expanded(
              child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Game_Button(text:text[3],index: 3,onClicked:onButtonClicked  ),
                  Game_Button(text:text[4],index: 4,onClicked:onButtonClicked  ),
                  Game_Button(text:text[5],index: 5,onClicked:onButtonClicked  ),
                ],
              ),
            ),
            Expanded(
              child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Game_Button(text:text[6],index: 6,onClicked:onButtonClicked  ),
                  Game_Button(text:text[7],index: 7,onClicked:onButtonClicked  ),
                  Game_Button(text:text[8],index: 8,onClicked:onButtonClicked  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

/*
player1
0 => x
1 =>o
2 =>x
3 =>o
 */
  int counter=0;
void onButtonClicked(index){
  if(text[index].isNotEmpty){
    return;
  }
if(counter%2==0){
  text[index]='X';
}else{
  text[index]='O';
}counter++;
if(checkWinner('X')){
  score1+=5;
  initBoard();
}else if(checkWinner('O')){
  score2+=5;
  initBoard();
}else if(counter==9){
  initBoard();
}
setState(() {

});
}
bool checkWinner(String symbol){
  //rows
/*
0 => 0 1 2
3 => 3 4 5
6 => 6 7 8
 */
for(int i=0;i<9;i+=3){
  if(text[i]==symbol&&text[i+1]==symbol&&text[i+2]==symbol) {

    return true;
  }}//column
  /*
  0 => 0 3 6
  1 => 1 4 7
  2 => 2 5 8
   */
     for(int i=0;i<3;i++){
    if(text[i]==symbol&&text[i+3]==symbol&&text[i+6]==symbol){

      return true;}
  }
if(text[0]==symbol&&text[4]==symbol&&text[8]==symbol){

  return true;}
 if(text[2]==symbol&&text[4]==symbol&&text[6]==symbol){
  return true;
}return false;
}
void initBoard(){
  text=[
    '','','',
    '','','',
    '','',''
  ];
  counter=0;
  setState(() {

  });
}
}