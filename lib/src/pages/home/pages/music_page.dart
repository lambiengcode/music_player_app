import 'package:flutter/material.dart';
import 'package:flutter_music_player/src/pages/home/components/appbar.dart';
import 'package:flutter_music_player/src/pages/home/components/play_control.dart';
import 'package:flutter_music_player/src/pages/home/components/title_song.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:flutter_music_player/src/repositories/song.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MusicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage>
    with SingleTickerProviderStateMixin {
  double _currentSliderValue = 20;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: height / 20.0),
                AppBarCustom(),
                SizedBox(height: height / 15.0),
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _animationController.value * 2.0,
                      child: child,
                    );
                  },
                  child: Container(
                    height: width * .75,
                    width: width * .75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://yt3.ggpht.com/ytc/AAUvwnjZFhxazvVmrkvRTwEVm_OV6gQsgmw3EN261lCy4Q=s900-c-k-c0x00ffffff-no-rj',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.0),
                TitleSong(
                  name: songs[0].name,
                  author: songs[0].author,
                ),
                SizedBox(height: 24.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 1,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0:36',
                        style: TextStyle(
                          color: mCM,
                          fontFamily: 'Lato',
                          fontSize: width / 28.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '4:06',
                        style: TextStyle(
                          color: mCM,
                          fontFamily: 'Lato',
                          fontSize: width / 28.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                PlayControl(),
              ],
            ),
          ),
          _buildBottomLyrics(context),
        ],
      ),
    );
  }

  Widget _buildBottomLyrics(context) {
    return Container(
      color: colorBlack1.withOpacity(.8),
      child: Neumorphic(
        padding: EdgeInsets.fromLTRB(32.0, 16.0, 24.0, height * .05),
        style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.vertical(
              top: Radius.circular(40.0),
            ),
          ),
          depth: -20.0,
          intensity: .25,
          color: mCH.withOpacity(.12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 4.0,
              margin: EdgeInsets.symmetric(
                horizontal: width * .32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: colorBlack1.withOpacity(.25),
                boxShadow: [
                  BoxShadow(
                    color: colorBlack2.withOpacity(.12),
                    offset: Offset(2.0, 2.0),
                    blurRadius: 2.0,
                  ),
                  BoxShadow(
                    color: colorBlack2.withOpacity(.5),
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              'Lyrics',
              style: TextStyle(
                fontSize: width / 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Lato',
                color: mCM.withOpacity(.85),
              ),
            )
          ],
        ),
      ),
    );
  }
}
