import 'package:bmi_calculate/bmi_info.dart';
import 'package:bmi_calculate/components/age_card.dart';
import 'package:bmi_calculate/components/gender_card.dart';
import 'package:bmi_calculate/components/size_config.dart';
import 'package:bmi_calculate/components/slider_card.dart';
import 'package:bmi_calculate/components/stat_card.dart';
import 'package:bmi_calculate/screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  BMI bmi = BMI();
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondScreen(
                bmi: bmi,
              ),
            ),
          );
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
      body: BodyMainScreen(),
    );
  }
}

class BodyMainScreen extends StatefulWidget {
  BodyMainScreen({
    Key? key,
  }) : super(key: key);
  @override
  _BodyMainScreenState createState() => _BodyMainScreenState();
}

class _BodyMainScreenState extends State<BodyMainScreen> {
  //
  @override
  Widget build(BuildContext context) {
    var bmi = Provider.of<BMI>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Flexible(
          child: GenderSelect(),
        ),
        Flexible(
          child: SliderCard(),
        ),
        Flexible(
          child: Row(
            children: [
              StatCard(label: 'WEIGHT'),
              AgeCard(label: 'AGE', numberOf: context.watch<BMI>().age),
            ],
          ),
        )
      ],
    );
  }
}

class GenderSelect extends StatefulWidget {
  const GenderSelect({
    Key? key,
  }) : super(key: key);

  @override
  _GenderSelectState createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  Gender selected = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(20.0),
              onTap: () {
                setState(() {
                  selected = Gender.male;
                });
              },
              child: GenderCard(
                icon: Icons.male,
                label: 'MALE',
                color: selected == Gender.male
                    ? kActiveCardColour
                    : kInactiveCardColour,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(20.0),
              onTap: () {
                setState(() {
                  selected = Gender.female;
                });
              },
              child: GenderCard(
                icon: Icons.female,
                label: 'FEMALE',
                color: selected == Gender.female
                    ? kActiveCardColour
                    : kInactiveCardColour,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
