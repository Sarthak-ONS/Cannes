import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomePageScreen.dart';

class CustomSplash extends StatefulWidget {
  const CustomSplash({Key key}) : super(key: key);

  @override
  _CustomSplashState createState() => _CustomSplashState();
}

class _CustomSplashState extends State<CustomSplash> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  _navigateToHome() async {
    await Future.delayed(
      Duration(
        seconds: 1,
      ),
      () {},
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePageScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3742FA),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cannes' , style: GoogleFonts.pacifico(
                fontSize: 40,
                color: Colors.white
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
