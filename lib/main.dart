import 'package:flutter/material.dart';
import 'package:smartherd_flutter_document/app_screen/first_screen.dart';
import 'package:smartherd_flutter_document/listVvew_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListvvewExample();
  }
}
