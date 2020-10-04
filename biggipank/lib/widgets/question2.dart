import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "What will you be paying?",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 100.0),
        Container(
          padding: EdgeInsets.all(9.0),
          margin: EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1.00)),
          child: FlatButton(
            onPressed: null,
            child: Text('In-State',
                style:
                    GoogleFonts.poppins(fontSize: 14.0, color: Colors.black)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(9.0),
          margin: EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1.00)),
          child: FlatButton(
            onPressed: null,
            child: Text('Out-of-State',
                style:
                    GoogleFonts.poppins(fontSize: 14.0, color: Colors.black)),
          ),
        )
      ],
    );
  }
}
