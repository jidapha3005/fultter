import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  num val1 = 15, val2 = 25;
  String _txt= ''; 

  void btnPressed({String op =''}){
    setState(() {
      num output = 0;
      if (op =='+'){
        output = val1 + val2;
        _txt = '$val1 + $val2 = $output';
      }else if (op =='-'){
         output = val1 - val2;
        _txt = '$val1 - $val2 = $output';
      }
    });

  }

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar:AppBar(title : Text('Text Bytton')
    ),
    body: Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Text(_txt),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => btnPressed(op: '+'),
            child: Text('$val1+$val2')),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => btnPressed(op: '-'),
            child: Text('$val1-$val2')),
            


        ],
      ),),
    );
  }
}