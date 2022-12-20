import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // set type to String as we are not assigning default value to variable
  // otherwise 'var' could be used.
  final String questionText;

  // constructor
  // it's shorthand for constructor
  // positional argument
  Question(this.questionText);

  // using textAlign Center doesn't make text center
  // we have to use Container widget
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),   // chap 40
      child: Text(        
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
