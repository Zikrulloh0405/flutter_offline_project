import 'package:flutter/material.dart';
import 'package:flutter_offline_project/widgets/main_widgets.dart';

class ImageViews extends StatefulWidget {
  const ImageViews({super.key});

  static const String id = "images_view";

  @override
  State<ImageViews> createState() => _ImageViewsState();
}

class _ImageViewsState extends State<ImageViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:
            text(text: 'Flutter Circle ImageView', fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text(
                text: 'Image From Network',
                fontWeight: FontWeight.bold,
                fontSize: 20),
            space(position: true, size: 20),
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCpd7uusUX-TLOfR89QI2dfFWY3BV9XK2g9Q&usqp=CAU",
                    fit: BoxFit.cover,
                  ),
                )),
            space(position: true, size: 20),
            text(
                text: 'Image From Asset',
                fontWeight: FontWeight.bold,
                fontSize: 20),
            space(position: true, size: 20),
            Container(
              height: 200,
              width: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(200)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: AssetImage("assets/images/person_image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
