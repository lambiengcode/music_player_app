import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_music_player/src/public/style.dart';

class TitleSong extends StatelessWidget {
  final String name;
  final String author;
  TitleSong({this.name, this.author});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.0, right: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: mC,
                  fontFamily: 'Lato',
                  fontSize: width / 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                author,
                style: TextStyle(
                  color: mC,
                  fontFamily: 'Lato',
                  fontSize: width / 28.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Feather.heart,
                  color: mC,
                  size: width / 16.0,
                ),
                onPressed: () => null,
              ),
              IconButton(
                icon: Icon(
                  Feather.bookmark,
                  color: mC,
                  size: width / 16.0,
                ),
                onPressed: () => null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
