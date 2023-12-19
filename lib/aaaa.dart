// import 'package:flutter/material.dart';

// class Pages extends StatefulWidget {
//   const Pages({super.key});

//   @override
//   State<Pages> createState() => _PagesState();
// }

// class _PagesState extends State<Pages> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(top: 100, bottom: 30),
//         decoration: BoxDecoration(
//             image: DecorationImage(
//           image: AssetImage("assets/image/wallpaper2.png"),
//           fit: BoxFit.cover,
//         )),
//         child: Column(
//           children: [
//             Column(
//               children: <Widget>[
//                 Icon(
//                   Icons.lock,
//                   color: Colors.white,
//                   size: 40,
//                 ),
//                 Text(
//                   "9:41",
//                   style: TextStyle(
//                     fontSize: 70,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   "Monday,June 22",
//                   style: TextStyle(fontSize: 20, color: Colors.white),
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
            
//                   MaterialButton(
                    
//                     height: 70,
//                     minWidth: 400,
                    
//                     onPressed: () {},
//                     child: Text("button 1"),
//                     color: Colors.white.withOpacity(0.6),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   MaterialButton(
//                     height: 70,
//                     minWidth: 400,
//                     onPressed: () {},
//                     child: Text("button 1"),
//                     color: Colors.white.withOpacity(0.6),
              
//               ),
//               ],
//             ),
//             Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Container(
//                   child: MaterialButton(
//                     height: 65,
//                     shape: const CircleBorder(),
//                     color: Colors.black.withOpacity(0.1),
//                     onPressed: () {},
//                     child: const Icon(
//                       Icons.flashlight_on,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: MaterialButton(
//                     height: 65,
//                     shape: const CircleBorder(),
//                     color: Colors.black.withOpacity(0.1),
//                     onPressed: () {},
//                     child: const Icon(
//                       Icons.camera_alt,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             // const Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }
