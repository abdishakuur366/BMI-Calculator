import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          // primaryColor: Color(0xff111328),
          scaffoldBackgroundColor: Color(0xff0A0E21)),
      home: HomeScreen(),
    );
  }
}
