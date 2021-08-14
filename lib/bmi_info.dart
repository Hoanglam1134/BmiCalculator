import 'dart:core';

import 'package:flutter/cupertino.dart';

List<String> output = [
  'Below normal weight',
  'Normal weight',
  'Overweight',
  'Class I Obesity',
  'Class II Obesity',
  'Class III Obesity',
];

List<String> range = [
  'Underweight',
  'Normal',
  'Overweight',
  'Class I',
  'Class II',
  'Class III',
];

List<String> rangeNum = [
  '< 18.5',
  '18.5 - 25',
  '25 - 30',
  '30 - 35',
  '30 - 35',
  '> 40',
];

List<String> advice = [
  'You have to exercises and eat more.',
  'You have a normal body weight. Good job!',
  'You are overweight. Eat healthy and exercises more!',
  'You\'re now in class I obesty. Go on a diet!',
  'You\'re now in class II obesty. Go to the doctor or it\'ll harm your health!',
  'You\'re now in class III obesty. Emergency! Your health maybe risk!'
];

class BMI extends ChangeNotifier {
  BMI({this.height = 180, this.weight = 60, this.age = 18});

  int height;
  int weight;
  int age;

  void incrementWei() {
    weight++;
    notifyListeners();
  }

  void decrementWei() {
    weight--;
    notifyListeners();
  }

  void setHeight(int hei) {
    height = hei;
    notifyListeners();
  }

  String calcB() {
    final bmiVal = (weight / (height * height) * 10000).toStringAsFixed(1);
    return bmiVal;
  }

  int lvlBMI() {
    final double bmi = weight / (height * height) * 10000;

    if (bmi < 18.5) {
      return 0;
    } else if (bmi < 25) {
      return 1;
    } else if (bmi < 30) {
      return 2;
    } else if (bmi < 35) {
      return 3;
    } else if (bmi < 40) {
      return 4;
    } else {
      return 5;
    }
  }
}
