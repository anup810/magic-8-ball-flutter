import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Ask Me Anything'),
            ),
            backgroundColor: Colors.blue[900],
          ),
          body: AskMeAnything(),
        ),
      ),
    );

class AskMeAnything extends StatefulWidget {
  @override
  _AskMeAnythingState createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int buttonPressed = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: TextButton(
              child: Image.asset('images/ball$buttonPressed.png'),
              onPressed: () {
                setState(() {
                  buttonPressed = Random().nextInt(4) + 1;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
