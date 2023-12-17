import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: text(text: 'Student Portal'),
        centerTitle: true,
      ),
      body: GridView.count(
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        crossAxisCount: 2,
        children: [
          _studentCard(cardImage: 'assets/images/img.png'),
          _studentCard(cardImage: 'assets/images/img.png'),
        ],
      ),
    );
  }

  Widget _studentCard({required String cardImage}) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(color: Colors.amber),
      child: Column(
        children: [
          SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage(cardImage),
                fit: BoxFit.cover,
              )),
          text(text: 'text')
        ],
      ),
    );
  }
}
