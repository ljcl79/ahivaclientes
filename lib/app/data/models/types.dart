import 'package:flutter/material.dart';

class Campo {
  String label;
  String value;

  Campo(this.label, this.value);
}

class Bloque {
  String label;
  List<Campo> campos;

  Bloque(this.label, this.campos);
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}
