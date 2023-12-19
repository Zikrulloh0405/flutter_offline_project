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
      appBar: AppBar(),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signWith(
                images: "assets/images/google.svg",
                withText: 'Telegram',
                color: Colors.black,
                textColor: Colors.white,
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
                navigatoTo: HomePage.id),
            _signWith(
                images: "assets/images/github.svg",
                withText: 'Git Hub',
                color: Colors.blueGrey,
                textColor: Colors.white,
                navigatoTo: HomePage.id),
            _signWith(
                images: "assets/images/microsoft.svg",
                withText: 'Microsoft',
                textColor: Colors.white,
                color: Colors.black,
                navigatoTo: HomePage.id),
            _signWith(
                images: "assets/images/twitter.svg",
                withText: 'Twitter',
                textColor: Colors.black,
                navigatoTo: HomePage.id),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _followUs(
                  images:
                      "https://cdn-icons-png.flaticon.com/128/3536/3536505.png",
                ),
                _followUs(
                  images:
                      "https://cdn-icons-png.flaticon.com/128/5379/5379469.png",
                ),
                _followUs(
                  images:
                      "https://cdn-icons-png.flaticon.com/128/3536/3536394.png",
                ),
                _followUs(
                  images:
                      "https://cdn-icons-png.flaticon.com/128/9449/9449200.png",
                ),
              ],
            )
          ],
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
        margin: const EdgeInsets.only(bottom: 30),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: color ?? Colors.white,
            // border: Border.all(width: 1),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[400]!, spreadRadius: 2, blurRadius: 2)
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 35, height: 35, child: SvgPicture.asset(images)),
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

  Widget _followUs({
    required String images,
  }) {
    return Container(
      color: Colors.amber,
      height: 50,
      width: 50,
      child: GestureDetector(
          onTap: () {},
          child: SvgPicture.network(
            images,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          )),
    );
  }
}
