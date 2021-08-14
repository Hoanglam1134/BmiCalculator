import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculate/bmi_info.dart';
import 'package:provider/provider.dart';

class StatCard extends StatelessWidget {
  StatCard({
    required this.label,
  });
  final String label;
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
                context.watch<BMI>().weight.toString(),
                style: kNumberTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.watch<BMI>().decrementWei();
                    },
                    child: ButtonIcon(
                      icon: Icons.remove,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.watch<BMI>().incrementWei();
                    },
                    child: ButtonIcon(
                      icon: Icons.add,
                    ),
                  ),
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
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
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
