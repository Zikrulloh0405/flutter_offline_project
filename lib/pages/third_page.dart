import 'package:flutter/material.dart';
import 'package:flutter_offline_project/pages/first_page.dart';
import 'package:flutter_offline_project/pages/second_page.dart';
import 'package:flutter_offline_project/widgets/main_widgets.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  static const String id = "third_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text(text: 'TOPLINE', fontSize: 30, fontWeight: FontWeight.bold),
              Container(
                height: 300,
                width: 300,
                child: Image.asset(
                  "assets/images/ic_3.png",
                  fit: BoxFit.cover,
                ),
              ),
              space(position: true, size: 40),
              MaterialButton(
                height: 50,
                minWidth: 150,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, FirstPage.id, (route) => false);
                },
                child: text(text: 'Next', color: Colors.white),
              ),
              space(position: true, size: 20),
              MaterialButton(
                height: 50,
                minWidth: 150,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.blue,
                onPressed: () {
                  Navigator.popAndPushNamed(context, SecondPage.id);
                },
                child: text(text: 'Back', color: Colors.white),
              ),
            ]),
      ),
    );
    ;
  }
}
