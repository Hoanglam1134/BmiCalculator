import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';
import '../bmi_info.dart';
import 'package:provider/provider.dart';

class ResultCard extends StatelessWidget {
  ResultCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BMI>(
      builder: (context, bmi, _) {
        return Expanded(
          child: Container(
            margin: const EdgeInsets.all(kMargin * 2),
            padding: const EdgeInsets.all(kPadding),
            color: kActiveCardColour,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  output[bmi.lvlBMI()],
                  style: bmi.lvlBMI() == 1 ? kGoodText : kBadText,
                ),
                Text(
                  bmi.calcB(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  range[bmi.lvlBMI()] + ' BMI range:',
                  //'wewe',
                  style: kTextStyle,
                ),
                Text(
                  rangeNum[bmi.lvlBMI()] + 'kg/m2',
                  style: kBodyTextStyle,
                ),
                Text(
                  advice[bmi.lvlBMI()],
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
