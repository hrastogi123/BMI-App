import 'dart:math';

class BMIbrain{
  BMIbrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi >= 25){
      return 'Your BMI is Higher , Try to Workout More !';
    }else if(_bmi > 18.5){
      return 'Your BMI is Normal , Keep it up !';
    }else {
      return 'Your BMI is Low , Try to Eat More !';
    }
  }
}