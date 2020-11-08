import 'package:ahiva/app/modules/perfil/perfil_controller.dart';
import 'package:ahiva/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class PerfilPage extends StatelessWidget {
  String id = 'perfilpage';
  Map<String, String> datos = {
    "Nombre": "Usuario",
    "Telefono": "0000000",
    "Email": "usuario@ahiva.com"
  };

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PerfilController>(
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
                          'Tus datos',
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
                      itemCount: datos.length,
                      itemBuilder: (BuildContext context, int index) {
                        final List list = datos.entries.toList();
                        print(list);
                        return Container(
                          padding: EdgeInsets.all(10.0),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    list[index].key,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    list[index].value,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
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
