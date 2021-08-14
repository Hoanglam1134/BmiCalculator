import 'package:bmi_calculate/components/result_card.dart';
import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bmi_info.dart';

class SecondScreen extends StatelessWidget {
  final BMI bmi;
  const SecondScreen({Key? key, required this.bmi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.read<BMI>().age);
    print(context.read<BMI>().height);
    print(context.read<BMI>().weight);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 30.0,
          leading: const Icon(
            Icons.menu_outlined,
          ),
          title: const Text(
            'BMI CALCULATOR',
            textAlign: TextAlign.center,
            style: kTextStyle,
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: kBottomContainerHeight,
            color: kBottomContainerColour,
            alignment: Alignment.center,
            child: const Text(
              'RE-CALCULATE YOUR BMI',
              style: kBottomText,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kMargin * 2),
              child: Text(
                'Your Result',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ResultCard(),
          ],
        ),
      ),
    );
  }
}
