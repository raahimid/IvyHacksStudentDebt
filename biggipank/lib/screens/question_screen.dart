import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  String dropdownValue = "Florida International University";
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50.0),
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              FlatButton(
                onPressed: null,
                child: Icon(Icons.chevron_left),
              ),
              SizedBox(width: 75.0),
              Text(
                "1 out of 5",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "What school are you trying to simulate?",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50.0),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 1.0)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),
                style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                onChanged: (String newVal) {
                  setState(() {
                    dropdownValue = newVal;
                  });
                },
                items: <String>[
                  'Florida International University',
                  'FSU',
                  'FAU',
                  'FNU'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          FlatButton(
            onPressed: null,
            child: null,
          )
        ],
      ),
    ));
  }
}
