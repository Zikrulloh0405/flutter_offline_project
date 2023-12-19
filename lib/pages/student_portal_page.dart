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
                    cardImage:
                        'https://cdn-icons-png.flaticon.com/128/9408/9408175.png',
                    cardTitle: 'profile',
                    page: HomePage.id),
                // Spacer(),
                _studentCard(
                    cardImage:
                        'https://cdn-icons-png.flaticon.com/128/780/780575.png',
                    cardTitle: 'events',
                    page: HomePage.id),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _studentCard(
                    cardImage:
                        'https://cdn-icons-png.flaticon.com/128/33/33308.png',
                    cardTitle: 'staff',
                    page: HomePage.id),
                // Spacer(),
                _studentCard(
                    cardImage:
                        'https://cdn-icons-png.flaticon.com/128/2206/2206322.png',
                    cardTitle: 'attendance',
                    page: HomePage.id),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _studentCard(
                    cardImage:
                        'https://cdn-icons-png.flaticon.com/128/3073/3073455.png',
                    cardTitle: 'chatbox',
                    page: HomePage.id),
                // Spacer(),
                _studentCard(
                    cardImage:
                        'https://cdn-icons-png.flaticon.com/128/921/921591.png',
                    cardTitle: 'gradesheets',
                    page: HomePage.id),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _studentCard(
                    cardImage:
                        'https://cdn-icons-png.flaticon.com/128/6316/6316109.png',
                    cardTitle: 'gallery',
                    page: HomePage.id),
                // Spacer(),
                _studentCard(
                    cardImage:
                        'https://cdn-icons-png.flaticon.com/128/5609/5609462.png',
                    cardTitle: 'free dollars',
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
                child: Image.network(
                  cardImage,
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


// "https://cdn-icons-png.flaticon.com/128/9408/9408175.png"
// "https://cdn-icons-png.flaticon.com/128/780/780575.png"
// "https://cdn-icons-png.flaticon.com/128/33/33308.png"
// "https://cdn-icons-png.flaticon.com/128/2206/2206322.png"
// "https://cdn-icons-png.flaticon.com/128/921/921591.png"
// "https://cdn-icons-png.flaticon.com/128/6316/6316109.png"