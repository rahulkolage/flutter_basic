import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // we can use VoidCallback instead of Function
  // to be more specific
  // final Function selectHandler;
  final VoidCallback selectHandler;
  final String answerText;

  // constructor
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.blue),
        //     foregroundColor: MaterialStateProperty.all(Colors
        //         .white) // added for ref. , no need to set as dart take default theme color
        //     ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
