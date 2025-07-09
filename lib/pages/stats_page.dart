// import 'package:flutter/material.dart';
// import 'package:flutter_helloapp/theme/colors.dart';
// import 'package:flutter_helloapp/json/day_month.dart';

// class StatsPage extends StatefulWidget {
//   @override
//   _StatsPageState createState() => _StatsPageState();
// }

// class _StatsPageState extends State<StatsPage> {
//   int activeMonth = 4;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: grey.withOpacity(0.05), body: getBody());
//   }

//   Widget getBody() {
//     var size = MediaQuery.of(context).size;

//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: white,
//               boxShadow: [
//                 BoxShadow(
//                   color: grey.withOpacity(0.01),
//                   spreadRadius: 10,
//                   blurRadius: 3,
//                   // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: 60,
//                 right: 20,
//                 left: 20,
//                 bottom: 25,
//               ),
//               child: Column(
//                 children: [
//                   // Header
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Stats",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: black,
//                         ),
//                       ),
//                       Icon(Icons.search, size: 30, color: black),
//                     ],
//                   ),

//                   SizedBox(height: 25),

//                   // Calendar
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: List.generate(days.length, (index) {
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             activeMonth = index;
//                           });
//                         },
//                         child: Container(
//                           width: (MediaQuery.of(context).size.width - 40) / 7,
//                           child: Column(
//                             children: [
//                               Text(
//                                 days[index]['label'],
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                               SizedBox(height: 10),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: activeMonth == index
//                                       ? primary
//                                       : Colors.transparent,
//                                   border: Border.all(
//                                     color: activeMonth == index
//                                         ? primary
//                                         : black.withOpacity(0.1),
//                                   ),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                     top: 7,
//                                     bottom: 7,
//                                     left: 12,
//                                     right: 12,
//                                   ),
//                                   child: Text(
//                                     months[index]['day'],
//                                     style: TextStyle(
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.w600,
//                                       color: activeMonth == index
//                                           ? white
//                                           : black,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
