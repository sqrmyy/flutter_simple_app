import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_simple_app/screen/input_page.dart';
import 'package:flutter_simple_app/screen/results_page.dart';

// import 'package:audioplayers/audio_cache.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        'results': (context) => ResultsPage(),
      },
    );
  }
}
