import 'package:flutter/material.dart';
import 'package:flutter_offline_project/pages/first_page.dart';
import 'package:flutter_offline_project/pages/home_page.dart';
import 'package:flutter_offline_project/pages/second_page.dart';
import 'package:flutter_offline_project/pages/third_page.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      title: "First Flutter App",
      home: HomePage(),
      routes: {
        HomePage.id :(context) => HomePage(),
        FirstPage.id :(context) => FirstPage(),
        SecondPage.id : (context) => SecondPage(),
        ThirdPage.id :(context) => ThirdPage()
      },
    );
  }

}