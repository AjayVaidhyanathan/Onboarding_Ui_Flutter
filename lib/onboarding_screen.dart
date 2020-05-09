import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 40),
        Container(
            width: MediaQuery.of(context).size.width * 0.80,
            child: Image.asset("assets/img_src_1.jpg")),
        SizedBox(height: 20),
        Text(
          "Plan your trip",
          style: GoogleFonts.roboto(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        Text(
          "Travel around the world to know \n and get to know people",
          style: GoogleFonts.roboto(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class OnBoardScreen1 extends StatelessWidget {
  const OnBoardScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 40),
        Container(
            width: MediaQuery.of(context).size.width * 0.80,
            child: Image.asset("assets/img_src_2.jpg")),
        SizedBox(height: 20),
        Text(
          "Select a date",
          style: GoogleFonts.roboto(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        Text(
          "Select a date, Book your ticket, Choose \n your travel partner",
          style: GoogleFonts.roboto(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class OnBoardScreen2 extends StatelessWidget {
  const OnBoardScreen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 40),
        Container(
            width: MediaQuery.of(context).size.width * 0.80,
            child: Image.asset("assets/img_src_3.jpg")),
        SizedBox(height: 20),
        Text(
          "Enjoy your trip",
          style: GoogleFonts.roboto(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        Text(
          "Enjoy your holiday , Enjoy your ride \n with your loved ones",
          style: GoogleFonts.roboto(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
