import 'package:bmi_calculate/components/gender_card.dart';
import 'package:bmi_calculate/components/size_config.dart';
import 'package:bmi_calculate/components/slider_card.dart';
import 'package:bmi_calculate/components/stat_card.dart';
import 'package:bmi_calculate/screen/second_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender selected = Gender.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 30.0,
        title: const Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
          style: kTextStyle,
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          });
        },
        child: Container(
          height: kBottomContainerHeight,
          color: kBottomContainerColour,
          alignment: Alignment.center,
          child: const Text(
            'CALCULATE',
            style: kBottomText,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GenderCard(
                  icon: Icons.male,
                  label: 'MALE',
                  tapped: () {
                    setState(() {
                      selected = Gender.male;
                    });
                  },
                  color: selected == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                ),
                GenderCard(
                  icon: Icons.female,
                  label: 'FEMALE',
                  tapped: () => setState(() {
                    selected = Gender.female;
                  }),
                  color: selected == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                ),
              ],
            ),
          ),
          Expanded(
            child: SliderCard(),
          ),
          Expanded(
              child: Row(
            children: [
              StatCard(label: 'WEIGHT', numberOf: 65),
              StatCard(label: 'AGE', numberOf: 20),
            ],
          ))
        ],
      ),
    );
  }
}
