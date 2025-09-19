
import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_assets.dart';
import 'package:shafa_code/app/modules/medicine_note/bindings/medicine_note_binding.dart';
import 'package:shafa_code/app/modules/medicine_note/views/medicine_note_view.dart';
import 'package:shafa_code/app/modules/save/bindings/save_binding.dart';
import 'package:shafa_code/app/modules/save/views/save_view.dart';

import '../../../data/model/category_model.dart';

class HomeController extends GetxController {
  final categories = <CategoryItem>[
    CategoryItem(title: 'Popular', icon: AppAssets.popular),
    CategoryItem(title: 'Breathing', icon: AppAssets.breathing),
    CategoryItem(title: 'Sound', icon: AppAssets.credentialSound),
    CategoryItem(title: 'Explore', icon: AppAssets.explore),
    CategoryItem(title: 'Latest', icon: AppAssets.latest),
    CategoryItem(title: 'Meditation', icon: AppAssets.meditation),
    CategoryItem(title: 'Short Meditation', icon: AppAssets.shortMeditation),
    CategoryItem(title: 'Sleeping', icon: AppAssets.sleeping),
    CategoryItem(title: 'Natural Sound', icon: AppAssets.naturalSound),
    CategoryItem(
      title: 'Medicine Note',
      icon: AppAssets.medicineNote,
      onTap: () {
        Get.to(() => MedicineNoteView(), binding: MedicineNoteBinding(), transition: Transition.rightToLeft);
      },
    ),
    CategoryItem(
      title: 'Save',
      icon: AppAssets.save,
      onTap: () {
        Get.to(() => SaveView(), binding: SaveBinding(), transition: Transition.rightToLeft);
      },
    ),
    CategoryItem(title: 'Wallpaper', icon: AppAssets.wallpaper),
  ].obs;

  final featuredList = <String>[AppAssets.featured, AppAssets.anouncment, AppAssets.be, AppAssets.belive].obs;

  final featuredQuotes = <String>[AppAssets.never2, AppAssets.belive, AppAssets.motivate, AppAssets.featured].obs;

  final featuredMoments = <String>[AppAssets.giveup, AppAssets.struggle, AppAssets.be, AppAssets.your_best].obs;
}


