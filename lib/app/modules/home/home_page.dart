import 'package:ahiva/app/modules/abiertos/abiertos_page.dart';
import 'package:ahiva/app/modules/dash/dash_page.dart';
import 'package:ahiva/app/modules/historico/historico_page.dart';
import 'package:ahiva/app/modules/home/home_controller.dart';
import 'package:ahiva/app/modules/perfil/perfil_page.dart';
import 'package:ahiva/app/modules/porenviar/porenviar_page.dart';
import 'package:ahiva/app/theme/theme.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  String id = 'homepage';
  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Home", AhivaColors.red,
        labelStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 10)),
    new TabItem(Icons.unarchive_rounded, "Envios abiertos", AhivaColors.red,
        labelStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 10)),
    new TabItem(Icons.create_new_folder, "Nuevo envío", AhivaColors.red,
        labelStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 10)),
    new TabItem(Icons.all_inbox, "Histórico", AhivaColors.red,
        labelStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 10)),
    new TabItem(Icons.account_circle, "Perfil", AhivaColors.red,
        labelStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 10)),
  ]);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return GetBuilder<HomeController>(
      id: id,
      builder: (_) => Scaffold(
        backgroundColor: Colors.grey[100],
        body: _callPage(_.currentIndex),
        bottomNavigationBar: _crearBottomNavigationBar(_),
      ),
    );
  }

  Widget _callPage(int index) {
    switch (index) {
      case 0:
        return DashPage();
      case 1:
        return AbiertosPage();
      case 2:
        return PorEnviarPage();
      case 3:
        return HistoricoPage();
      case 4:
        return PerfilPage();
      default:
        return Container(
          child: Text('default'),
        );
    }
  }

  Widget _crearBottomNavigationBar(HomeController _) {
    return CircularBottomNavigation(
      tabItems,
      iconsSize: 24.0,
      controller: _.navigationController,
      barHeight: _.bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      normalIconColor: Colors.red,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int currentIndex) {
        _.updatePage(currentIndex);
      },
    );
  }
}
