import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';

class SliderCard extends StatelessWidget {
  int startHeight = 180;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(kMargin),
        padding: EdgeInsets.all(kPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kActiveCardColour,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'HEIGHT',
              style: kTextStyle,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: '180', style: kNumberTextStyle),
                  TextSpan(text: 'cm', style: kBodyTextStyle),
                ],
              ),
            ),
            Slider(
              value: startHeight.toDouble(),
              onChanged: (newValue) {
                startHeight = newValue.round();
              },
              min: 10.0,
              max: 280.0,
            )
          ],
        ),
      ),
    );
  }
}
