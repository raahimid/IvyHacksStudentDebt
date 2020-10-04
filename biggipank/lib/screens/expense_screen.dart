import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseScreen extends StatefulWidget {
  @override
  _ExpenseScreenState createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4AC34F),
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Text(
              'Post College Expenses',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
              ),
            ),
            Text(
              '\$1,890.00',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFFDEABA),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Icon(
                            Icons.domain,
                            color: Color(0xFFF59337),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'Housing',
                          style: GoogleFonts.poppins(
                            fontSize: 23.0,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.0),
                              Text(
                                '\$',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey.shade500,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(5),
                                    WhitelistingTextInputFormatter.digitsOnly,
                                  ],
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '\0'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFC9FBB8),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Icon(
                            Icons.receipt,
                            color: Color(0xFF45AE5C),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'Insurance',
                          style: GoogleFonts.poppins(
                            fontSize: 23.0,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.0),
                              Text(
                                '\$',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey.shade500,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(5),
                                    WhitelistingTextInputFormatter.digitsOnly,
                                  ],
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '\0'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFFBB8B8),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Icon(
                            Icons.local_gas_station,
                            color: Color(0xFFFE0000),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'Gas',
                          style: GoogleFonts.poppins(
                            fontSize: 23.0,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.0),
                              Text(
                                '\$',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey.shade500,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(5),
                                    WhitelistingTextInputFormatter.digitsOnly,
                                  ],
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '\0'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF9DE8F9),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xFF295DC3),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'Shopping',
                          style: GoogleFonts.poppins(
                            fontSize: 23.0,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.0),
                              Text(
                                '\$',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey.shade500,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(5),
                                    WhitelistingTextInputFormatter.digitsOnly,
                                  ],
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '\0'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFE3A4F9),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Icon(
                            Icons.tv,
                            color: Color(0xFFA33DC7),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'Entertainment',
                          style: GoogleFonts.poppins(
                            fontSize: 23.0,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.0),
                              Text(
                                '\$',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey.shade500,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(5),
                                    WhitelistingTextInputFormatter.digitsOnly,
                                  ],
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '\0'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9F0A4),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Icon(
                            Icons.directions_car,
                            color: Color(0xFFD4BF4B),
                            size: 30.0,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'Transportation',
                          style: GoogleFonts.poppins(
                            fontSize: 23.0,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10.0),
                              Text(
                                '\$',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey.shade500,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Flexible(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(5),
                                    WhitelistingTextInputFormatter.digitsOnly,
                                  ],
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '\0'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
