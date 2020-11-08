import 'package:ahiva/app/modules/porenviar/porenviar_controller.dart';
import 'package:ahiva/app/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'local_widgets/input_intervalo.dart';

class PorEnviarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String id = 'porenviar';

    return GetBuilder<PorEnviarController>(
      id: id,
      init: PorEnviarController(),
      builder: (_) => SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(
                          'Nuevo envío',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: AhivaColors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: _tabStep(_),
                ),
              ],
            ),
            //_refreshControl,
          ],
        ),
      ),
    );
  }

  Widget _tabStep(PorEnviarController _) => Container(
        margin: EdgeInsets.only(top: 10),
        child: Stepper(
          steps: [
            Step(
              title: Text("Dimensiones/Peso"),
              content: _dimensiones(),
            ),
            Step(
              title: Text("Cuando podemos recogerlo?"),
              content: _listaDiasRecogida(_),
            ),
            Step(
              title: Text("Donde debemos recogerlo?"),
              content: _dondeRecogerlo(),
            ),
            Step(
              title: Text("Donde debemos entregarlo?"),
              content: _dondeEntregarlo(),
            ),
            Step(
              title: Text("Cuando podemos entregarlo?"),
              content: _listaDiasEntrega(_),
            ),
          ],
          controlsBuilder: (BuildContext context,
              {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
            return Row(
              children: [
                RaisedButton(
                  onPressed: () {},
                  color: AhivaColors.red,
                  child: Text('Siguiente',
                      style: TextStyle(color: AhivaColors.white)),
                ),
                SizedBox(
                  width: 10.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  color: AhivaColors.red,
                  child: Text(
                    'Anterior',
                    style: TextStyle(color: AhivaColors.white),
                  ),
                ),
              ],
            );
          },
          currentStep: _.index,
          onStepTapped: (index) {
            _.index = index;
            _.updateStep();
          },
          onStepCancel: () {
            print("You are clicking the cancel button.");
          },
          onStepContinue: () {},
        ),
      );

  Widget _listaDiasRecogida(PorEnviarController _) {
    return Column(
      children: [
        RaisedButton(
          color: AhivaColors.red,
          onPressed: () async {
            final date2 = null;
            final time2 = null;
            final date = await showDatePicker(
              context: Get.context,
              firstDate: DateTime(1900),
              initialDate: DateTime.now(),
              lastDate: DateTime(2100),
              builder: (context, child) => Localizations.override(
                context: context,
                locale: Locale('es'),
                child: child,
              ),
            );
            if (date != null) {
              final time = await showTimePicker(
                context: Get.context,
                initialTime: TimeOfDay.fromDateTime(DateTime.now()),
              );

              if (time != null) {
                final date2 = await showDatePicker(
                  context: Get.context,
                  firstDate: date,
                  initialDate: date,
                  lastDate: DateTime(2100),
                  builder: (context, child) => Localizations.override(
                    context: context,
                    locale: Locale('es'),
                    child: child,
                  ),
                );

                if (date2 != null) {
                  final time2 = await showTimePicker(
                    context: Get.context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  );
                  _.addRow1(
                    date.day.toString() +
                        '-' +
                        date.month.toString() +
                        '-' +
                        date.year.toString() +
                        ' ' +
                        time.hour.toString() +
                        ':' +
                        time.minute.toString(),
                    date2.day.toString() +
                        '-' +
                        date2.month.toString() +
                        '-' +
                        date2.year.toString() +
                        ' ' +
                        time2.hour.toString() +
                        ':' +
                        time2.minute.toString(),
                  );
                }
              }
            }
          },
          child: Container(
            width: double.infinity,
            //height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 14,
                  color: AhivaColors.white,
                ),
                Text(
                  ' Selecciona el periodo',
                  style: TextStyle(color: AhivaColors.white, fontSize: 12),
                )
              ],
            ),
          ),
        ),
        Container(
          child: DataTable(
              columnSpacing: 1.0,
              columns: [
                DataColumn(
                    label: Text(
                  'Desde (Día/Hora)',
                  style: TextStyle(fontSize: 10),
                )),
                DataColumn(
                    label: Text(
                  'Hasta (Día/Hora)',
                  style: TextStyle(fontSize: 10),
                )),
                DataColumn(label: Text('')),
              ],
              rows: _.rowList1),
        ),
      ],
    );
  }

  Widget _dimensiones() {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(labelText: 'Largo'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Alto'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Profundidad'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Peso'),
        ),
      ],
    );
  }

  Widget _dondeRecogerlo() {
    return Container(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Dirección para recoger'),
            ),
          ),
          FlatButton(onPressed: () => {}, child: Icon(Icons.pin_drop))
        ],
      ),
    );
  }

  Widget _dondeEntregarlo() {
    return Container(
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Dirección para entregar'),
            ),
          ),
          FlatButton(onPressed: () => {}, child: Icon(Icons.pin_drop))
        ],
      ),
    );
  }

  Widget _listaDiasEntrega(PorEnviarController _) {
    return Column(
      children: [
        RaisedButton(
          color: AhivaColors.red,
          onPressed: () async {
            final date2 = null;
            final time2 = null;
            final date = await showDatePicker(
              context: Get.context,
              firstDate: DateTime(1900),
              initialDate: DateTime.now(),
              lastDate: DateTime(2100),
              builder: (context, child) => Localizations.override(
                context: context,
                locale: Locale('es'),
                child: child,
              ),
            );
            if (date != null) {
              final time = await showTimePicker(
                context: Get.context,
                initialTime: TimeOfDay.fromDateTime(DateTime.now()),
              );

              if (time != null) {
                final date2 = await showDatePicker(
                  context: Get.context,
                  firstDate: date,
                  initialDate: date,
                  lastDate: DateTime(2100),
                  builder: (context, child) => Localizations.override(
                    context: context,
                    locale: Locale('es'),
                    child: child,
                  ),
                );

                if (date2 != null) {
                  final time2 = await showTimePicker(
                    context: Get.context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  );
                  _.addRow2(
                    date.day.toString() +
                        '-' +
                        date.month.toString() +
                        '-' +
                        date.year.toString() +
                        ' ' +
                        time.hour.toString() +
                        ':' +
                        time.minute.toString(),
                    date2.day.toString() +
                        '-' +
                        date2.month.toString() +
                        '-' +
                        date2.year.toString() +
                        ' ' +
                        time2.hour.toString() +
                        ':' +
                        time2.minute.toString(),
                  );
                }
              }
            }
          },
          child: Container(
            width: double.infinity,
            //height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 14,
                  color: AhivaColors.white,
                ),
                Text(
                  ' Selecciona el periodo',
                  style: TextStyle(color: AhivaColors.white, fontSize: 12),
                )
              ],
            ),
          ),
        ),
        Container(
          child: DataTable(
              columnSpacing: 5.0,
              columns: [
                DataColumn(
                    label: Text(
                  'Desde (Día/Hora)',
                  style: TextStyle(fontSize: 10),
                )),
                DataColumn(
                    label: Text(
                  'Hasta (Día/Hora)',
                  style: TextStyle(fontSize: 10),
                )),
                DataColumn(label: Text('')),
              ],
              rows: _.rowList2),
        ),
      ],
    );
  }
}
