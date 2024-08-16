import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Text(generateLuckyNumber()),
          ),
        ));
  }
}

String generateLuckyNumber() {
  var random = Random();
  int luckynum = random.nextInt(10);
  return 'Your Lucky Number $luckynum';
}
