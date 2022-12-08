import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_simple_app/components/reusable_card.dart';
import 'package:flutter_simple_app/components/submit_button.dart';
import 'package:flutter_simple_app/constants.dart';

class InputBMI {
  final String BMI;
  final String result;
  final String interpretation;

  InputBMI({
    required this.BMI,
    required this.result,
    required this.interpretation,
  });
}

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final InputBMI input =
        ModalRoute.of(context)!.settings.arguments as InputBMI;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 15.0,
              left: 15.0,
            ),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              bgColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    input.result.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[400],
                    ),
                  ),
                  Text(
                    input.BMI,
                    style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    input.interpretation,
                  ),
                ],
              ),
            ),
          ),
          SubmitButton(
            text: 'RE-CALUCULATE',
            onTap: Navigator.of(context).pop,
          ),
        ],
      ),
    );
  }
}
