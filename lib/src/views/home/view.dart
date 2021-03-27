import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:flutter_music_player/src/repositories/playlist.dart';
import 'package:flutter_music_player/src/repositories/song.dart';
import 'package:flutter_music_player/src/views/home/components/playlist_card.dart';
import 'package:flutter_music_player/src/views/home/components/song_card.dart';
import 'package:flutter_music_player/src/views/home/components/top_bar.dart';
import 'package:flutter_music_player/src/views/home/components/welcome.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height / 30.0),
            TopBar(),
            _spaceWidget(context),
            Welcome(),
            _spaceWidget(context),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                  overscroll.disallowGlow();
                  return true;
                },
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _spaceWidget(context),
                      _buildTitle(context, 'Recently played'),
                      _spaceWidget(context),
                      _buildRecentlyList(context),
                      _spaceWidget(context),
                      _buildTitle(context, 'Discover'),
                      _spaceWidget(context),
                      _buildDiscoverList(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _spaceWidget(context) {
    return SizedBox(height: height / 45.0);
  }

  Widget _buildTitle(context, title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: width / 20.0,
        fontWeight: FontWeight.w600,
        fontFamily: 'Lato',
      ),
    );
  }

  Widget _buildRecentlyList(context) {
    return Container(
      width: width,
      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.all(.0),
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return SongCard(
                index: index,
                isLast: index == 2,
                songInfo: songs[index],
              );
            },
          ),
          Icon(
            Feather.chevron_down,
            size: width / 16.0,
          ),
        ],
      ),
    );
  }

  Widget _buildDiscoverList(context) {
    return Container(
      width: width,
      child: Column(
        children: [
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.all(.0),
            itemCount: playlists.length,
            itemBuilder: (context, index) {
              return PlaylistCard(
                playlistInfo: playlists[index],
              );
            },
          ),
          Icon(
            Feather.chevron_down,
            size: width / 16.0,
          ),
        ],
      ),
    );
  }
}
