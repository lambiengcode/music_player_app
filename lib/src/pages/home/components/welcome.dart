import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Your Weekly\nMusic Mix',
          style: TextStyle(
            fontSize: width / 14.5,
            fontWeight: FontWeight.w600,
            fontFamily: 'Lato',
            letterSpacing: 1.5,
            wordSpacing: 1.5,
          ),
        ),
        SizedBox(height: 12.0),
        Neumorphic(
          margin: EdgeInsets.only(right: width * .5),
          padding: EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 32.0,
          ),
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(30.0),
            ),
            color: colorBlack2,
            intensity: .1,
            depth: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Listen',
                style: TextStyle(
                  fontSize: width / 24.0,
                  fontFamily: 'Lato',
                  color: colorPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 6.0),
              Icon(
                Feather.play_circle,
                size: width / 18.0,
                color: colorPrimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
