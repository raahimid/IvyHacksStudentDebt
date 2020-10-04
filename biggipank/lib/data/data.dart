import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Logic extends StatefulWidget {
  @override
  _LogicState createState() => _LogicState();
}

class _LogicState extends State<Logic> {
  @override
  @override
  String url = "https://ivyhacks.herokuapp.com/tuition?name=Adrian College";
  Map data;

  final double INTEREST_RATE = .0429;

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
    //print(data);
  }

  interestcost4Unsub() {
    int amount = data['in_state_tuition'] * INTEREST_RATE;
    int result = amount + data['in_state_tuition'];

    return result;
  }

  Widget build(BuildContext context) {
    if (data == null) return Text("not available");
    return Text(data["in_state_tuition"].toString());
  }
}
