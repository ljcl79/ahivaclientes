import 'package:flutter/material.dart';

class LabelField extends StatelessWidget {
  final String text;

  LabelField(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
