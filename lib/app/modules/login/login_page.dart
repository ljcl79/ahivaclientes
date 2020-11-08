import 'package:ahiva/app/global_widgets/inputtext.dart';
import 'package:ahiva/app/global_widgets/labelfield.dart';
import 'package:ahiva/app/global_widgets/widgets.dart';
import 'package:ahiva/app/modules/login/login_controller.dart';
import 'package:ahiva/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const logoSize = 60.0;

class LoginPage extends StatelessWidget {
  String id = 'login';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final moreSize = width * 0.2;
    return GetBuilder<LoginController>(
      id: id,
      builder: (_) => Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: logoSize,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset('assets/dsp-logo.png'),
                            ),
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 4,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Inicia sesión:',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          LabelField('Usuario:'),
                          InputField(
                            x: _,
                            nameForm: id,
                            controller: _.ctrl[0],
                            hintText: 'Nombre usuario/email',
                            icon: Icons.person_outline,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          LabelField('Contraseña:'),
                          InputField(
                            x: _,
                            nameForm: id,
                            controller: _.ctrl[1],
                            hintText: 'Su contraseña',
                            icon: Icons.vpn_key,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: double.infinity,
                    //height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                          colors: AhivaGradien,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        onTap: () {
                          _.loginUser();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Entrar',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          (_.loading == 1)
              ? IndicadorProgreso()
              : SizedBox(
                  height: 0,
                ),
        ],
      ),
    );
  }
}
