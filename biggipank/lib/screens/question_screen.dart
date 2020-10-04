import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  // ignore: override_on_non_overriding_member
  final String url = "https://ivyhacks.herokuapp.com/names";
  List data = [];
  String _selectedSchool;

  Future<void> getSWData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    var resBody = json.decode(res.body);

    setState(() {
      data = resBody;
    });
  }

  @override
  void initState() {
    super.initState();
    getSWData();
  }

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
          StepProgressIndicator(
            totalSteps: 5,
            currentStep: 1,
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
            "What school are you trying to simulate?",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 100.0),
          Container(
              padding: EdgeInsets.all(9.0),
              width: MediaQuery.of(context).size.width / 1.2,
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.00)),
              child: DropdownButtonHideUnderline(
                  child: new DropdownButton(
                isExpanded: true,
                items: data.map((item) {
                  return new DropdownMenuItem(
                    child: Center(
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontSize: 16.0),
                      ),
                    ),
                    value: item,
                  );
                }).toList(),
                onChanged: (newVal) {
                  setState(() {
                    _selectedSchool = newVal;
                  });
                },
                value: _selectedSchool,
              ))),
          SizedBox(height: 200),
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
