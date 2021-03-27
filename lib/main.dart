import 'package:flutter_music_player/src/lang/translation_service.dart';
import 'package:flutter_music_player/src/routes/app_pages.dart';
import 'package:flutter_music_player/src/shared/logger/logger_utils.dart';
import 'package:flutter_music_player/src/theme/theme_service.dart';
import 'package:flutter_music_player/src/theme/themes.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    enableLog: true,
    logWriterCallback: Logger.write,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    locale: TranslationService.locale,
    fallbackLocale: TranslationService.fallbackLocale,
    translations: TranslationService(),
    theme: Themes().lightTheme,
    darkTheme: Themes().darkTheme,
    themeMode: ThemeService().getThemeMode(),
  ));
}
