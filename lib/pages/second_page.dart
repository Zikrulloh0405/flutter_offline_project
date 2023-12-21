import 'package:flutter/material.dart';
import 'package:flutter_offline_project/pages/third_page.dart';
import 'package:flutter_offline_project/widgets/main_widgets.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  static const String id = "second_page";

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
              text(
                  text: 'XIANYU BY ALIBAB',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              Container(
                height: 300,
                width: 300,
                child: Image.asset(
                  "assets/images/ic_2.jpg",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdPage()));
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
                  Navigator.pop(context);
                },
                child: text(text: 'Back', color: Colors.white),
              ),
            ]),
      ),
    );
    ;
  }
}
