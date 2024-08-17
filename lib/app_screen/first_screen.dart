import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
          backgroundColor: Colors.deepPurple,
          appBar: AppBar(
            title: const Text('Flutter Demo'),
            backgroundColor: Colors.blue,
          ),
          body: const Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Rows(
                    flightText: 'Spice Jet',
                    destinationText: 'From Mumbai to Banglore vai NewDelhi'),
                SizedBox(
                  height: 20,
                ),
                Rows(
                    flightText: 'Indigo',
                    destinationText: 'From Mumbai to Banglore'),
                SizedBox(
                  height: 20,
                ),
                Rows(
                    flightText: 'Air India',
                    destinationText: 'From Mumbai to Banglore'),
                ClipImage(),
                FlightingButton()
              ],
            ),
          ),
        ));
  }
}

String generateLuckyNumber() {
  var random = Random();
  int luckynum = random.nextInt(10);
  return 'Your Lucky Number $luckynum';
}

class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/img.png', width: 400, height: 300);
  }
}

class Rows extends StatelessWidget {
  final String flightText;
  final String destinationText;
  const Rows({
    super.key,
    required this.flightText,
    required this.destinationText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Text(
          flightText,
          style: const TextStyle(
              fontFamily: 'Raleway', fontSize: 32, color: Colors.white),
        )),
        Expanded(
            child: Text(destinationText,
                style: const TextStyle(color: Colors.white))),
      ],
    );
  }
}

class FlightingButton extends StatelessWidget {
  const FlightingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(6.0),
              backgroundColor: MaterialStateProperty.all(Colors.yellow)),
          onPressed: () => bookFligth(context),
          child: const Text(
            'Book Your Flight',
            style: TextStyle(fontFamily: 'Raleway'),
          )),
    );
  }
}

void bookFligth(BuildContext context) {
  var alertDialog = AlertDialog(
      title: Text('Booking Successful'),
      content: Text('Your flight has been booked'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('ok'),
        )
      ]);
  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
