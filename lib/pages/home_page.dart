import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline_project/pages/student_portal_page.dart';
import 'package:flutter_offline_project/utils/datetime.dart';
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/lock_screen_2.jpg"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Column(
            children: [
              icon(icon: Icons.lock_rounded, color: Colors.white, size: 40),
              space(position: true, size: 20),
              text(
                text: time(),
                color: Colors.white,
                fontSize: 60,
              ),
              // space(position: true, size: 10),
              text(
                text: fTime(),
                color: Colors.white,
                fontSize: 29,
              ),
              space(position: true, size: 15),
              _notificationList(),
              _notificationList(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: 50,
                      // width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(50)),
                      child: icon(icon: Icons.flashlight_on, size: 40),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      // height: 50,
                      // width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(50)),
                      child: icon(icon: CupertinoIcons.camera, size: 40),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _notificationList() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, StudentPortal.id);
      },
      child: Container(
        padding: EdgeInsets.all(20),
        // height: 80,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
              )
            ],
            color: Color.fromARGB(255, 184, 172, 172),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon(icon: Icons.telegram, size: 35),
            // Spacer(),
            space(position: false, size: 10),
            Column(
              children: [
                text(text: 'Title', fontSize: 20, fontWeight: FontWeight.bold),
                text(text: 'Description')
              ],
            ),
            Spacer(),
            text(text: 'now')
          ],
        ),
      ),
    );
  }
}
