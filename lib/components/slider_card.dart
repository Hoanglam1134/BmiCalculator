import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bmi_info.dart';

class SliderCard extends StatefulWidget {
  //SliderCard({required this.curHeight});
  int curHeight = 180;
  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  @override
  Widget build(BuildContext context) {
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
                    text: widget.curHeight.toString(), style: kNumberTextStyle),
                const TextSpan(text: 'cm', style: kBodyTextStyle),
              ],
            ),
          ),
          Slider(
            value: widget.curHeight.toDouble(),
            onChanged: (newValue) {
              setState(() {
                widget.curHeight = newValue.round();
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
