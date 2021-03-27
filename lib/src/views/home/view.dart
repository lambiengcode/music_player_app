import 'package:flutter/material.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:flutter_music_player/src/views/home/components/top_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: mC,
        height: _size.height,
        width: _size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: _size.height / 25.0),
            TopBar(),
            _spaceWidget(context),
          ],
        ),
      ),
    );
  }

  Widget _spaceWidget(context) {
    final _size = MediaQuery.of(context).size;
    return SizedBox(height: _size.height / 50.0);
  }
}
