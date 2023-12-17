import 'package:flutter/material.dart';
import 'package:flutter_offline_project/aaaa.dart';
// import 'package:flutter_offline_project/pages/home_page.dart';
// import 'package:flutter_offline_project/pages/student_portal_page.dart';

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
      home: Pages(),
      routes: {
        // HomePage.id: (context) => const HomePage(),
        // StudentPortal.id: (context) => const StudentPortal()
      },
    );
  }
}
