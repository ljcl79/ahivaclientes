import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int currentIndex = 0;
  double bottomNavBarHeight = 60;
  CircularBottomNavigationController navigationController;

  @override
  onInit() {
    navigationController = new CircularBottomNavigationController(currentIndex);
    super.onInit();
  }

  updatePage(currentIndex) {
    this.currentIndex = currentIndex;
    update(['homepage']);
  }
}
