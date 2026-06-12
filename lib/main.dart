import 'package:flutter/material.dart';
import 'package:new_flutter_application_1/assignment_3/assignment_3.dart';
import 'package:new_flutter_application_1/assignment_3/assignment_3_about.dart';
import 'package:new_flutter_application_1/assignment_3/assignment_3_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment3(),
    );
  }
}
