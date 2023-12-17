import 'package:flutter/material.dart';
import 'package:flutter_offline_project/pages/home_page.dart';
import 'package:flutter_offline_project/pages/registration_page.dart';
import 'package:flutter_offline_project/pages/student_portal_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        StudentPortal.id: (context) => const StudentPortal(),
        RegistrationPage.id: (context) => const RegistrationPage()
      },
    );
  }
}
