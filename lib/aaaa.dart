// import 'package:flutter/material.dart';

// class Pages extends StatefulWidget {
//   const Pages({super.key});

//   @override
//   State<Pages> createState() => _PageState();
// }

// class _PageState extends State<Pages> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Container(
//         width: 400,
//         height: 830,
//         //color: Colors.yellow,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                     width: 195,
//                     height: 195,
//                     color: Colors.indigo,
//                     child: _circle(number: '0')),
//                 Container(
//                   width: 195,
//                   height: 195,
//                   // color: Colors.red,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(top: 20),
//                             width: 95,
//                             height: 94,
//                             color: Colors.indigo,
//                           ),
//                           Container(
//                             width: 95,
//                             height: 94,
//                             color: Colors.indigo,
//                             child: _circle(number: '1'),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         width: 195,
//                         height: 95,
//                         color: Colors.indigo,
//                         child: _circle(number: '2'),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: 195,
//                   height: 195,
//                   color: Colors.red,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Container(
//                         width: 195,
//                         height: 95,
//                         color: Colors.indigo,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(top: 20),
//                             width: 95,
//                             height: 95,
//                             color: Colors.indigo,
//                           ),
//                           Container(
//                             width: 95,
//                             height: 95,
//                             color: Colors.indigo,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 195,
//                   height: 195,
//                   color: Colors.indigo,
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: 195,
//                   height: 195,
//                   color: Colors.indigo,
//                 ),
//                 Container(
//                   width: 195,
//                   height: 195,
//                   //color: Colors.red,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(top: 20),
//                             width: 95,
//                             height: 94,
//                             color: Colors.indigo,
//                           ),
//                           Container(
//                             width: 95,
//                             height: 94,
//                             color: Colors.indigo,
//                           ),
//                         ],
//                       ),
//                       Container(
//                         width: 195,
//                         height: 95,
//                         color: Colors.indigo,
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   width: 195,
//                   height: 195,
//                   // color: Colors.red,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Container(
//                         width: 195,
//                         height: 95,
//                         color: Colors.indigo,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(top: 20),
//                             width: 95,
//                             height: 95,
//                             color: Colors.indigo,
//                           ),
//                           Container(
//                             width: 95,
//                             height: 95,
//                             color: Colors.indigo,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: 195,
//                   height: 195,
//                   color: Colors.indigo,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       )),
//     );
//   }

//   Widget _circle({required String number}) {
//     return Center(
//       child: Container(
//         height: 50,
//         width: 50,
//         decoration: BoxDecoration(
//             color: Colors.grey, borderRadius: BorderRadius.circular(50)),
//         child: Center(
//             child: Text(
//           number,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         )),
//       ),
//     );
//   }
// }
