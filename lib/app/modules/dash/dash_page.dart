import 'package:ahiva/app/modules/home/home_controller.dart';
import 'package:ahiva/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dash_controller.dart';

class DashPage extends StatelessWidget {
  String id = 'dashpage';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashController>(
      id: id,
      init: DashController(),
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
                          'Hola',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: AhivaColors.red,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Usuario',
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
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Status de tus envíos',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(fontSize: 30),
                                ),
                                Text(
                                  'Por recoger',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(fontSize: 30),
                                ),
                                Text(
                                  'En transito',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '10',
                                  style: TextStyle(fontSize: 30),
                                ),
                                Text(
                                  'Entregados',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 18.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            side: BorderSide(color: Colors.blue[900])),
                        onPressed: () {
                          final HomeController c = Get.find();
                          c.navigationController.value = 2;
                        },
                        color: AhivaColors.red,
                        textColor: Colors.white,
                        child:
                            Text("Nuevo envío", style: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
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
