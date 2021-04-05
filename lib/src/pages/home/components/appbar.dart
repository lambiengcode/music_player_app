import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:get/get.dart';

class AppBarCustom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Feather.arrow_left,
            color: mC,
            size: width / 15.0,
          ),
          onPressed: () => Get.back(),
        ),
        Text(
          'Playing now',
          style: TextStyle(
            color: mC,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
            fontSize: width / 20.0,
          ),
        ),
        IconButton(
          icon: Icon(
            Feather.more_horizontal,
            color: mC,
            size: width / 15.0,
          ),
          onPressed: () => Get.back(),
        ),
      ],
    );
  }
}
