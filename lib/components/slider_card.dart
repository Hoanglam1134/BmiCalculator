import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bmi_info.dart';

class SliderCard extends StatefulWidget {
  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Container(
      margin: const EdgeInsets.all(kMargin),
      padding: const EdgeInsets.all(kPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kActiveCardColour,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'HEIGHT',
            style: kTextStyle,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: context.read<BMI>().height.toString(),
                    style: kNumberTextStyle),
                const TextSpan(text: 'cm', style: kBodyTextStyle),
              ],
            ),
          ),
          Slider(
            value: context.read<BMI>().height.toDouble(),
            onChanged: (newValue) {
              //print(context.read<BMI>().height);
              setState(() {
                context.read<BMI>().height = newValue.toInt();
              });
            },
            min: 10.0,
            max: 280.0,
          )
        ],
      ),
    );
  }
}
