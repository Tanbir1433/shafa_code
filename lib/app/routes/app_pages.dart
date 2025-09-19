import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/medicine_note/bindings/medicine_note_binding.dart';
import '../modules/medicine_note/views/medicine_note_view.dart';
import '../modules/more/bindings/more_binding.dart';
import '../modules/more/views/more_view.dart';
import '../modules/navbar/bindings/navbar_binding.dart';
import '../modules/navbar/views/navbar_view.dart';
import '../modules/save/bindings/save_binding.dart';
import '../modules/save/views/save_view.dart';
import '../modules/soul/bindings/soul_binding.dart';
import '../modules/soul/views/soul_view.dart';
import '../modules/sound/sound_details/bindings/sound_details_binding.dart';
import '../modules/sound/sound_details/views/sound_details_view.dart';
import '../modules/sound/sounds/bindings/sounds_binding.dart';
import '../modules/sound/sounds/views/sounds_view.dart';
import '../modules/top/bindings/top_binding.dart';
import '../modules/top/views/top_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.TOP,
      page: () => const TopView(),
      binding: TopBinding(),
    ),
    GetPage(
      name: _Paths.SOUNDS,
      page: () => const SoundsView(),
      binding: SoundsBinding(),
    ),
    GetPage(
      name: _Paths.SOUL,
      page: () => const SoulView(),
      binding: SoulBinding(),
    ),
    GetPage(
      name: _Paths.MORE,
      page: () => const MoreView(),
      binding: MoreBinding(),
    ),
    GetPage(
      name: _Paths.SOUND_DETAILS,
      page: () => const SoundDetailsView(),
      binding: SoundDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MEDICINE_NOTE,
      page: () => const MedicineNoteView(),
      binding: MedicineNoteBinding(),
    ),
    GetPage(
      name: _Paths.SAVE,
      page: () => const SaveView(),
      binding: SaveBinding(),
    ),
  ];
}
