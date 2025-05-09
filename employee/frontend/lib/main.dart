import 'package:flutter/material.dart';
import 'package:frontend/widget/pages/EmployeeCRUDpage';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmployeeCRUDPage(),
    );
  }
}
