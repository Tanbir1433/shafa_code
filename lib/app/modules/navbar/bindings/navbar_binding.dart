import 'package:get/get.dart';
import 'package:shafa_code/app/modules/home/controllers/home_controller.dart';
import 'package:shafa_code/app/modules/more/controllers/more_controller.dart';
import 'package:shafa_code/app/modules/soul/controllers/soul_controller.dart';
import 'package:shafa_code/app/modules/top/controllers/top_controller.dart';

import '../../sound/sounds/controllers/sounds_controller.dart';
import '../controllers/navbar_controller.dart';

class NavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbarController>(() => NavbarController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SoundsController>(() => SoundsController());
    Get.lazyPut<SoulController>(() => SoulController());
    Get.lazyPut<TopController>(() => TopController());
    Get.lazyPut<MoreController>(() => MoreController());


  }
}
