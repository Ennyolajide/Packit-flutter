import 'package:flutter/material.dart';
import 'package:flutter_app/ui/home.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      home: Home()
    );
  
  }
}
