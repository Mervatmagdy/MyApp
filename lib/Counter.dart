import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  static const routeName='Counter_screen';

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count'),
              ElevatedButton(onPressed: (){
                count++;
                setState(() {

                });
              }
                  , child: Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}