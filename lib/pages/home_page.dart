import 'package:flutter/material.dart';
import 'package:flutter_offline_project/pages/first_page.dart';
import 'package:flutter_offline_project/widgets/main_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = "home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, FirstPage.id);
              },
              child: text(text: 'Button'))),
    );
  }
}
