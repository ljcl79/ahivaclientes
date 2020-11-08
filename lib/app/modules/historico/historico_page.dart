import 'package:ahiva/app/global_widgets/item_envio.dart';
import 'package:ahiva/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'historico_controller.dart';

class HistoricoPage extends StatelessWidget {
  String id = 'historicopage';
  List<String> envios = [
    'Envio 1',
    'Envio 2',
    'Envio 3',
    'Envio 4',
    'Envio 5',
    'Envio 6'
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoricoController>(
      id: id,
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
                          'Histórico de envíos',
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
                  child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      itemCount: envios.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemEnvio(item: envios[index]);
                      }),
                ),
              ],
            ),
            //_refreshControl,
          ],
        ),
      ),
    );
  }
}
