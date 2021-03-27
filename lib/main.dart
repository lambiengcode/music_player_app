import 'package:flutter_music_player/src/app.dart';
import 'package:flutter_music_player/src/theme/themes.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      themeMode: ThemeMode.light,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      home: App(),
    );
  }
}
