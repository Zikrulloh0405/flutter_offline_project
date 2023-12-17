import 'package:flutter/material.dart';
import 'package:flutter_offline_project/pages/home_page.dart';
import 'package:flutter_offline_project/pages/registration_page.dart';
import 'package:flutter_offline_project/widgets/main_widgets.dart';

class StudentPortal extends StatefulWidget {
  const StudentPortal({super.key});

  static const String id = "student_poratal";

  @override
  State<StudentPortal> createState() => _StudentPortalState();
}

class _StudentPortalState extends State<StudentPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RegistrationPage.id);
              },
              child: icon(icon: Icons.join_full)),
          space(position: false, size: 10)
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: text(text: 'Student Portal'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _studentCard(
                    cardImage: 'assets/images/img.png',
                    cardTitle: 'profile',
                    page: HomePage.id),
                // Spacer(),
                _studentCard(
                    cardImage: 'assets/images/img.png',
                    cardTitle: 'events',
                    page: HomePage.id),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _studentCard(
                    cardImage: 'assets/images/img.png',
                    cardTitle: 'profile',
                    page: HomePage.id),
                // Spacer(),
                _studentCard(
                    cardImage: 'assets/images/img.png',
                    cardTitle: 'events',
                    page: HomePage.id),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _studentCard(
                    cardImage: 'assets/images/img.png',
                    cardTitle: 'profile',
                    page: HomePage.id),
                // Spacer(),
                _studentCard(
                    cardImage: 'assets/images/img.png',
                    cardTitle: 'events',
                    page: HomePage.id),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _studentCard(
                    cardImage: 'assets/images/img.png',
                    cardTitle: 'profile',
                    page: HomePage.id),
                // Spacer(),
                _studentCard(
                    cardImage: 'assets/images/img.png',
                    cardTitle: 'events',
                    page: HomePage.id),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _studentCard(
      {required String cardImage,
      required String cardTitle,
      required String page}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, page);
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, spreadRadius: 1, offset: Offset(1.5, 2.5))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(31),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 50,
                height: 50,
                child: Image(
                  image: AssetImage(cardImage),
                  fit: BoxFit.cover,
                )),
            space(position: true, size: 10),
            text(
                text: cardTitle.toUpperCase(),
                fontSize: 16,
                fontWeight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
