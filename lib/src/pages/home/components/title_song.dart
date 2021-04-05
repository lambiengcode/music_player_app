import 'package:flutter/material.dart';
import 'package:flutter_music_player/src/public/style.dart';

class TitleSong extends StatelessWidget {
  final String name;
  final String author;
  TitleSong({this.name, this.author});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            color: mC,
            fontFamily: 'Lato',
            fontSize: width / 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          author,
          style: TextStyle(
            color: mC,
            fontFamily: 'Lato',
            fontSize: width / 26.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
