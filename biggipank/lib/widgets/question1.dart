import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  @override
  final String url = "https://ivyhacks.herokuapp.com/names";
  List data = [];
  String _selectedSchool;
  bool result;

  Future<String> getSWData() async {
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Question2()));
              },
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

class Question2 extends StatelessWidget {
  @override
  bool result;
  Color indicator = Colors.white;
  Color textIndicator = Colors.black;
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
                onPressed: () {
                  Navigator.pop(context);
                },
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
                color: indicator,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.00)),
            child: FlatButton(
              onPressed: () {
                indicator = Colors.black;
                textIndicator = Colors.white;
                result = true;
              },
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
              onPressed: () {
                result = false;
              },
              child: Text('Out-of-State',
                  style:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.black)),
            ),
          ),
          SizedBox(height: 125),
          FlatButton(
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Question3()));
              },
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

class Question3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool result;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50.0),
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.chevron_left),
              ),
              SizedBox(width: 75.0),
              Text(
                "3 out of 5",
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
            currentStep: 3,
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
            "Are you currently working?",
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
              onPressed: () {
                result = true;
              },
              child: Text('Yes',
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
              onPressed: () {
                result = false;
              },
              child: Text('No',
                  style:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.black)),
            ),
          ),
          SizedBox(height: 125),
          FlatButton(
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Question4()));
              },
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

class Question4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool result;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50.0),
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.chevron_left),
              ),
              SizedBox(width: 75.0),
              Text(
                "4 out of 5",
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
            currentStep: 3,
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
            "Are you dependant or Independant?",
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
              onPressed: () {
                result = true;
              },
              child: Text('Dependant',
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
              onPressed: () {
                result = false;
              },
              child: Text('Independant',
                  style:
                      GoogleFonts.poppins(fontSize: 14.0, color: Colors.black)),
            ),
          ),
          SizedBox(height: 125),
          FlatButton(
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Question5()));
              },
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

class Question5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool result;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 50.0),
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.chevron_left),
              ),
              SizedBox(width: 75.0),
              Text(
                "5 out of 5",
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
            currentStep: 3,
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
            "Do you qualify for Federal Financial Student Aid?",
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
              onPressed: () {
                result = true;
              },
              child: Text('Yes',
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
              onPressed: () {
                result = false;
              },
              child: Text('No',
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
                  'N e x t',
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 14.0),
                ),
              ))
        ],
      ),
    ));
  }
}
