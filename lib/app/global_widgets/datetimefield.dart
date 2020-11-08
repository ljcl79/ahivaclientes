import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class InputDateTimeField extends StatelessWidget {
  void Function(String, int) onChanged;
  int i;
  final format = DateFormat("dd-MM-yyyy", 'es');

  InputDateTimeField({this.onChanged, this.i});

  @override
  Widget build(BuildContext context) {
    return DateTimeField(
      format: format,
      onShowPicker: (context, currentValue) async {
        final date = await showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          initialDate: currentValue ?? DateTime.now(),
          lastDate: DateTime(2100),
          builder: (context, child) => Localizations.override(
            context: context,
            locale: Locale('es'),
            child: child,
          ),
        );
        if (date != null) {
          onChanged(date.toString(), i);
          return date;
        } else {
          return currentValue;
        }
      },
    );
  }
}
