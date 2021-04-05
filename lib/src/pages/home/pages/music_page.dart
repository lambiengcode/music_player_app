import 'package:flutter/material.dart';
import 'package:flutter_music_player/src/pages/home/components/appbar.dart';
import 'package:flutter_music_player/src/pages/home/components/title_song.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:flutter_music_player/src/repositories/song.dart';

class MusicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: height / 20.0),
          AppBarCustom(),
          SizedBox(height: height / 15.0),
          Container(
            height: width * .65,
            width: width * .65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              image: DecorationImage(
                image: NetworkImage(
                  'https://yt3.ggpht.com/ytc/AAUvwnjZFhxazvVmrkvRTwEVm_OV6gQsgmw3EN261lCy4Q=s900-c-k-c0x00ffffff-no-rj',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 24.0),
          TitleSong(
            name: songs[0].name,
            author: songs[0].author,
          ),
        ],
      ),
    );
  }
}
