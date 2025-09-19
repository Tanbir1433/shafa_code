import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shafa_code/app/modules/home/views/home_view.dart';
import 'package:shafa_code/app/modules/more/views/more_view.dart';
import 'package:shafa_code/app/modules/soul/views/soul_view.dart';
import 'package:shafa_code/app/modules/top/views/top_view.dart';

import '../../sound/sounds/views/sounds_view.dart';

class NavbarController extends GetxController {


  final count = 0.obs;

  void increment() => count.value++;

  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  List<Widget> get pages => [HomeView(), SoundsView(), SoulView(), TopView(), MoreView()];
}
