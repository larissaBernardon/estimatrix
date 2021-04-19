import 'package:flutter/material.dart';

class TestGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 8,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1.3,
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.cyan,
        ),
      ],
    ));
  }
}
