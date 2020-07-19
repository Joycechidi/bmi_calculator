import 'dart:math';

//Source: https://en.wikipedia.org/wiki/Body_mass_index

//BMI is proportional to the mass and
// inversely proportional to the square of the height.

//BMI was designed to be used as a simple means of
// classifying average sedentary (physically inactive) populations,
// with an average body composition.
//a BMI from 18.5 up to 25 kg/m2 may indicate optimal weight,
//a BMI lower than 18.5 suggests the person is underweight,
//a number from 25 up to 30 may indicate the person is overweight,
//and a number from 30 upwards suggests the person is obese.[7][8]

//The BMI is universally expressed in kg/m2,
// resulting from mass in kilograms and height in metres.
// If pounds and inches are used,
// a conversion factor of 703 (kg/m2)/(lb/in2) must be applied.
// When the term BMI is used informally,
// the units are usually omitted.
//BMI = mass(kg)/height(m2) = mass(lb)/height(in2) * 703

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  double _bmi;
  final int height;
  final int weight;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight index. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'YOu have a normal body weight index. Keep up your current routine!';
    } else {
      return 'You have a lower than normal body weight index. Eat a little more more than your current meal portions';
    }
  }
}
