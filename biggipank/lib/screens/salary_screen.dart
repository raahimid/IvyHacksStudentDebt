import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalaryScreen extends StatefulWidget {
  @override
  _SalaryScreenState createState() => _SalaryScreenState();
}

class _SalaryScreenState extends State<SalaryScreen> {
  int salary = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDFFFB),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          shadowColor: Colors.transparent,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Image.asset(
            'images/Logo.png',
          ),
          title: Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              Text(
                'StudentDebt ',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Simulator',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Container(
            width: 300.0,
            child: Text(
              'How much are you making right now?',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 325.0,
            child: Text(
              'This calculation will help reduce the total monthly payment on your student loan. If you enter an income, assume we\'re putting 10% towards your loan while you\'re in college.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 13.0,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Image.asset('images/salary.png'),
          SizedBox(height: 20.0),
          Text(
            '\$$salary Monthly',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          SizedBox(height: 20.0),
          Slider(
            value: salary.toDouble(),
            min: 0,
            max: 5000,
            activeColor: Colors.black,
            onChanged: (double value) {
              setState(() {
                salary = value.round();
              });
            },
          ),
        ],
      ),
    );
  }
}
