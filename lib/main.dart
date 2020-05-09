import 'package:flutter/material.dart';
import 'package:onboarding_ui/onboarding_ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel UI',
      home: OnBoardingUI(),
    );
  }
}