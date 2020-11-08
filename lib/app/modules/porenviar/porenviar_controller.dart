import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PorEnviarController extends GetxController {
  int index = 0;

  List<DataRow> rowList1 = [];
  List<DataRow> rowList2 = [];

  onInit() {
    index = 0;
    super.onInit();
  }

  void addRow1(String data1, String data2) {
    // Built in Flutter Method.
    // This call to setState tells the Flutter framework that something has
    // changed in this State, which causes it to rerun the build method below.
    rowList1.add(
      DataRow(
        cells: <DataCell>[
          DataCell(Text(
            data1,
            style: TextStyle(fontSize: 10),
          )),
          DataCell(Text(
            data2,
            style: TextStyle(fontSize: 10),
          )),
          DataCell(Icon(Icons.auto_delete))
        ],
      ),
    );
    updateStep();
  }

  void addRow2(String data1, String data2) {
    // Built in Flutter Method.
    // This call to setState tells the Flutter framework that something has
    // changed in this State, which causes it to rerun the build method below.
    rowList2.add(
      DataRow(
        cells: <DataCell>[
          DataCell(Text(
            data1,
            style: TextStyle(fontSize: 10),
          )),
          DataCell(Text(
            data2,
            style: TextStyle(fontSize: 10),
          )),
          DataCell(Icon(Icons.auto_delete))
        ],
      ),
    );
    updateStep();
  }

  updateStep() {
    update(['porenviar']);
  }
}
