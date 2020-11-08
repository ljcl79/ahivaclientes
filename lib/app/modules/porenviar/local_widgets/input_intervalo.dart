import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class InputIntervalo extends StatelessWidget {
  void Function(String, int) onChanged;
  int i;
  final format = DateFormat("dd-MM-yyyy", 'es');

  InputIntervalo({this.onChanged, this.i});

  @override
  Widget build(BuildContext context) {
    return DateTimeField(
      format: format,
      onShowPicker: (context, currentValue) async {
        final date2 = null;
        final time2 = null;
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
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
          );

          if (time != null) {
            final date2 = await showDatePicker(
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

            if (date2 != null) {
              final time2 = await showTimePicker(
                context: context,
                initialTime:
                    TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
              );
            }
          }
          /*
          onChanged(
              date.toString() +
                  ' ' +
                  time.toString() +
                  ' ' +
                  date2.toString() +
                  ' ' +
                  time2.toString(),
              i);*/
          return date;
        } else {
          return currentValue;
        }
      },
    );
  }
}
