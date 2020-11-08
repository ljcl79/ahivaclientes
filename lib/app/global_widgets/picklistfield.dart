import 'package:ahiva/app/data/models/types.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class PickListField extends StatelessWidget {
  GetxController getxController;
  List<Item> items;
  Item value;
  String nameForm, hintText;
  void Function(Item, int) onChanged;
  int i;

  PickListField(
      {this.getxController,
      this.nameForm,
      this.i,
      this.onChanged,
      this.items,
      this.value,
      this.hintText = ''});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Item>(
      isExpanded: true,
      iconEnabledColor: Colors.black54,
      iconDisabledColor: Colors.black54,
      underline: SizedBox(),
      elevation: 16,
      hint: Text(hintText),
      value: value.name.isNotEmpty ? value : null,
      style: GoogleFonts.quicksand(
          textStyle: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
      )),
      onChanged: (Item newValue) {
        value = newValue;
        onChanged(newValue, i);
        getxController.update([nameForm]);
      },
      items: items.map((Item user) {
        return DropdownMenuItem<Item>(
          value: user,
          child: Row(
            children: <Widget>[
              (user.icon != null)
                  ? user.icon
                  : SizedBox(
                      height: 0,
                    ),
              SizedBox(
                width: 10,
              ),
              Text(
                user.name,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
