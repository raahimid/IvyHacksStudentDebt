// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// class Question1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//             "What school are you trying to simulate?",
//             textAlign: TextAlign.center,
//             style: GoogleFonts.poppins(
//                 fontSize: 20.0, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 100.0),
//           Container(
//               padding: EdgeInsets.all(9.0),
//               width: MediaQuery.of(context).size.width / 1.2,
//               margin: EdgeInsets.only(right: 8.0),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15.0),
//                   border: Border.all(
//                       color: Colors.black,
//                       style: BorderStyle.solid,
//                       width: 1.00)),
//               child: DropdownButtonHideUnderline(
//                   child: new DropdownButton(
//                 isExpanded: true,
//                 items: data.map((item) {
//                   return new DropdownMenuItem(
//                     child: Center(
//                       child: Text(
//                         item,
//                         textAlign: TextAlign.center,
//                         style: GoogleFonts.poppins(fontSize: 16.0),
//                       ),
//                     ),
//                     value: item,
//                   );
//                 }).toList(),
//                 onChanged: (newVal) {
//                   setState(() {
//                     _selectedSchool = newVal;
//                   });
//                 },
//                 value: _selectedSchool,
//               ))),
//       ],

//     );
//   }

// }
