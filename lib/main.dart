import 'package:dars/page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyMain());
}

class MyMain extends StatelessWidget {
  const MyMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}
