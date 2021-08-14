import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class GenderCard extends StatelessWidget {
  GenderCard({
    required this.icon,
    required this.label,
    //required this.gender,
    required this.color,
  });
  final IconData icon;
  final String label;
  //final Gender gender;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kMargin),
      padding: const EdgeInsets.all(kPadding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 120.0,
          ),
          Text(
            label,
            style: kLabelTextStyle,
          )
        ],
      ),
    );
  }
}
