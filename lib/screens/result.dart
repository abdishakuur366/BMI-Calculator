import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/widgets/reusable_card.dart';
import 'package:bmi_calculator/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultScreen extends StatelessWidget {
  final double result;

  const ResultScreen({Key? key, required this.result}) : super(key: key);
  String desider() {
    if (result >= 0 && result <= 18.5)
      return ('UnderWeight😒');
    else if (result >= 18.5 && result <= 24.9)
      return ('You Are Normal👍');
    else if (result >= 25.0 && result == 29.9)
      return ('OverWeight😥');
    else
      return ('You Are Obese😂');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: KActiveCardColor,
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 9,
              ),
              child: Text(
                'Your Result',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade300),
              ),
            ),
            Expanded(
              child: ReusableCard(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          result.toStringAsFixed(1),
                          style: TextStyle(
                              fontSize: 56,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade300),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          desider(),
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400),
                        ),
                      ),
                    ]),
              ),
            ),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              title: 'Re-Calcucalte',
            )
          ],
        ));
  }
}
