import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 15 && resultScore < 24) {
      resultText = 'You are a commoner yaar!';
    } else if (resultScore >= 25) {
      resultText = 'You are in between common and unique!';
    } else {
      resultText = 'You are you! and quite unique tbh!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
              onPressed: resetHandler,
              child: Text('Restart Quiz!'),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                side: BorderSide(color: Colors.orange),
              ))
        ],
      ),
    );
  }
}
