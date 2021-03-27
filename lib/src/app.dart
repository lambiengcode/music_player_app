import 'package:flutter/material.dart';
import 'package:flutter_music_player/src/views/home/view.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
