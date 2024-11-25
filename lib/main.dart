import 'package:flutter/material.dart';
//import 'package:flutter_application_1/random_page.dart';
import 'package:flutter_application_1/second_page.dart';

void main() => runApp(const MainApp());


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Number เลขเด็ด',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 20, 157, 211)),
      home:  const SecondPage(
      
      ),
    );
  }
}