import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/screens/result.dart';
import 'package:bmi_calculator/screens/widgets/custom_buutton.dart';
import 'widgets/widgets.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 180;
  double weight = 60;
  double age = 0;

  Gender selectedGender = Gender.male;

  void _goToResult() {
    //Calculating BMI Result
    double result = weight / pow(height / 100, 2);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ResultScreen(
        result: result,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //

      //
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: Color(0xff111328),
      ),
      body:
          //
          Container(
        alignment: Alignment.center,
        child:
            //

            Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      selected: selectedGender == Gender.male ? true : false,
                      onTab: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: IconContent(
                        iconData: Icons.male,
                        title: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      selected: selectedGender == Gender.female ? true : false,
                      onTab: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: IconContent(
                        iconData: Icons.female,
                        title: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.round().toString(), //or'$height'
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //annonymous function
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: KBottomContainerColour,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 16,
                        ),
                      ),
                      child: Slider(
                        value: height,
                        min: 10,
                        max: 320,
                        onChanged: (newVal) {
                          height = newVal;

                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toInt().toString(),
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'kg',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                  iconData: Icons.remove,
                                  onPressed: () {
                                    weight--;
                                    setState(() {});
                                  }),
                              SizedBox(
                                width: 15,
                              ),
                              RoundButton(
                                  iconData: Icons.add,
                                  onPressed: () {
                                    weight++;
                                    setState(() {});
                                  })
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //annonymous function
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toInt().toString(),
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'yrs',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                  iconData: Icons.remove,
                                  onPressed: () {
                                    age--;
                                    setState(() {});
                                  }),
                              SizedBox(
                                width: 15,
                              ),
                              RoundButton(
                                iconData: Icons.add,
                                onPressed: () {
                                  age++;
                                  setState(() {});
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //annonymous function
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(onPressed: _goToResult)
          ],
        ),
      ),
    );
  }
}
