import 'dart:ffi';

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String _str ='';
  final _ctrlEmail = TextEditingController();
  final _ctrlPwd = TextEditingController();
  final _ctrlName= TextEditingController();

  TextStyle textStyle()=> const TextStyle(
    color: Color.fromARGB(255, 241, 98, 15),
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  OutlineInputBorder outlineInputBorder()=> const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromARGB(255, 224, 22, 140),
      width: 2
      )
  );
  
  void updatetext()=>setState(() {
    _str = 'Name:${_ctrlName.value.text}';
  });

  Widget TextFieldEmail() =>  TextField(
    controller:_ctrlEmail,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: 'Email'
    ),

  );
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Random'),),
    body: const Center(
      child: SizedBox(
        width: 350,
        child: Column(children: [
        const SizedBox(height: 30,),
        TextFieldEmail(),
        const SizedBox(height: 30,),
        TextFieldPwd(),
        const SizedBox(height: 30,),
        TextFieldName(),
        const SizedBox(height: 30,),
        Text(_str)),
        ],),),)
  );
  }
