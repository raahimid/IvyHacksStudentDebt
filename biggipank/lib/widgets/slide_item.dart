import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:biggipank/model/slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:biggipank/screens/screens.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.height * 0.4,
          child: Image.asset(sliderArrayList[index].sliderImageUrl),
        ),
        SizedBox(
          height: 60.0,
        ),
        Text(
          sliderArrayList[index].sliderHeading,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 23.5,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              sliderArrayList[index].sliderSubHeading,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        sliderArrayList[index].sliderButton == true ? FlatButton(
        onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => BottomNavScreen())
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
          width: 150.0,
          decoration: BoxDecoration(
            color: Color(0xFF72C6B2),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Text(
            'Begin',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
      ) : SizedBox(),
      ],
    );
  }
}