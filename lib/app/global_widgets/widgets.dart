import 'package:flutter/material.dart';

class IndicadorProgreso extends StatelessWidget {
  String mensage = "";

  IndicadorProgreso({this.mensage});

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey,
          ),
        ),
        Center(
          child: const CircularProgressIndicator(),
        ),
      ],
    );
  }
}
