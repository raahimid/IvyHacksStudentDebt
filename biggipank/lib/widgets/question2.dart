import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Question2 extends StatelessWidget {
  @override
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
                "2 out of 5",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          StepProgressIndicator(
            totalSteps: 5,
            currentStep: 2,
            size: 5,
            padding: 0,
            selectedColor: Colors.yellow,
            unselectedColor: Colors.cyan,
            roundedEdges: Radius.circular(10),
            selectedGradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellowAccent, Colors.deepOrange],
            ),
            unselectedGradientColor: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black, Colors.blue],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "What will you be paying?",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 100.0),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.00)),
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
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.00)),
            child: FlatButton(
              onPressed: null,
              child: Text('Out-of-State',
                  style:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.black)),
            ),
          ),
          SizedBox(height: 125),
          FlatButton(
              color: Colors.black,
              onPressed: null,
              child: Container(
                padding: EdgeInsets.all(9.0),
                margin: EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.00)),
                child: Text(
                  'N E X T',
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 14.0),
                ),
              ))
        ],
      ),
    ));
  }
}
