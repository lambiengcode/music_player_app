import 'package:flutter/material.dart';
import 'package:flutter_music_player/src/models/playlist.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PlaylistCard extends StatefulWidget {
  final Playlist playlistInfo;
  PlaylistCard({this.playlistInfo});
  @override
  State<StatefulWidget> createState() => _PlaylistCardState();
}

class _PlaylistCardState extends State<PlaylistCard> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16.0)),
        depth: -5.0,
        intensity: .65,
        color: colorBlack2,
      ),
      child: Stack(
        children: [
          Container(
            height: width * .35,
            width: width,
            margin: EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: NetworkImage(widget.playlistInfo.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: width * .35,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.black.withOpacity(.4),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 12.0),
                Text(
                  widget.playlistInfo.name,
                  style: TextStyle(
                    fontSize: width / 20.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
