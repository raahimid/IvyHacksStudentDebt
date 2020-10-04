import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => BottomNavScreen()));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => BottomNavScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 150.0),
                Row(
                  children: [
                    Image.asset('images/Logo.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50.0),
                        Text(
                          'StudentDebt',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Simulator',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 26.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Developed By:',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'Raahim, Nazmul, & Maurice',
                      style: GoogleFonts.poppins(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
