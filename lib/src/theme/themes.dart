import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Themes {
  final lightTheme = NeumorphicThemeData(
    baseColor: Color(0xFFFFFFFF),
    lightSource: LightSource.topLeft,
    depth: 10,
  );

  final darkTheme = NeumorphicThemeData(
    baseColor: Color(0xFF3E3E3E),
    lightSource: LightSource.topLeft,
    depth: 6,
  );
}
