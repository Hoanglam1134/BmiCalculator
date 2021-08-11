import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  StatCard({required this.label, required this.numberOf});
  final String label;
  int numberOf;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
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
                label,
                style: kBodyTextStyle,
              ),
              Text(
                numberOf.toString(),
                style: kNumberTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIcon(icon: Icons.remove),
                  ButtonIcon(icon: Icons.add),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  ButtonIcon({required this.icon});
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.grey[700],
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 25,
        ),
      ),
    );
  }
}
