import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_music_player/src/models/song.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SongCard extends StatefulWidget {
  final int index;
  final bool isLast;
  final Song songInfo;
  SongCard({this.index, this.isLast, this.songInfo});
  @override
  State<StatefulWidget> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: widget.isLast ? 4.5 : 14.5),
      decoration: widget.isLast
          ? null
          : BoxDecoration(
              border: Border(
                bottom: BorderSide(color: mC, width: .08),
              ),
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: width * .16,
                width: width * .16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    image: NetworkImage(widget.songInfo.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.songInfo.name,
                    style: TextStyle(
                      fontSize: width / 24.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    widget.songInfo.author,
                    style: TextStyle(
                      fontSize: width / 28.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato',
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.songInfo.stars.toString(),
                style: TextStyle(
                  fontSize: width / 26.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                  color: colorStar,
                ),
              ),
              SizedBox(width: 4.0),
              Icon(
                Icons.star,
                color: colorStar,
                size: width / 20.0,
              ),
              SizedBox(width: 12.0),
              NeumorphicButton(
                child: Icon(
                  Feather.more_vertical,
                  size: width / 18.0,
                ),
                padding: EdgeInsets.all(width / 32.0),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(16.0),
                  ),
                  depth: 20.0,
                  color: colorBlack2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
