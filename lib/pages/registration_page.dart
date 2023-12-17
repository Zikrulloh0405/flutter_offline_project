import 'package:flutter/material.dart';
import 'package:flutter_offline_project/pages/home_page.dart';
import 'package:flutter_offline_project/widgets/main_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  static const String id = "registration_page";

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _signWith(
                  images: "assets/images/google.svg",
                  withText: 'Telegram',
                  textColor: Colors.black,
                  //https://www.google.co.uz/
                  navigatoTo: HomePage.id),
              _signWith(
                  images: "assets/images/facebook.svg",
                  withText: 'Facebook',
                  color: Colors.blue,
                  navigatoTo: HomePage.id),
              _signWith(
                  images: "assets/images/apple.svg",
                  withText: 'Apple',
                  textColor: Colors.black,
                  // https://www.google.co.uz/?hl=ru
                  navigatoTo: HomePage.id),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signWith({
    required String images,
    required String withText,
    required String navigatoTo,
    Color? color,
    Color? textColor,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, navigatoTo);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 35, height: 35, child: SvgPicture.asset(images)),
            space(position: false, size: 10),
            text(
                text: "Sign In with $withText",
                color: textColor ?? Colors.white,
                fontSize: 20),
          ],
        ),
      ),
    );
  }
}
