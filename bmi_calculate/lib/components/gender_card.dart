import 'package:bmi_calculate/components/size_config.dart';
import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class GenderCard extends StatefulWidget {
  GenderCard({
    required this.icon,
    required this.label,
    required this.tapped,
    required this.color,
  });
  final IconData icon;
  final String label;
  final Function tapped;
  final Color color;

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.tapped(),
        child: Container(
          margin: EdgeInsets.all(kMargin),
          padding: EdgeInsets.all(kPadding),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Icon(
                widget.icon,
                size: 120.0,
              ),
              Text(
                widget.label,
                style: kLabelTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
