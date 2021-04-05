import 'package:flutter_music_player/src/app.dart';
import 'package:flutter_music_player/src/pages/home/pages/music_page.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => App(),
      children: [],
    ),
    GetPage(
      name: Routes.MUSIC,
      page: () => MusicPage(),
      children: [],
    ),
  ];
}
