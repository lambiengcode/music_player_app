import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_music_player/src/public/style.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TopBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton(context, Feather.search),
        _buildButton(context, Feather.headphones),
      ],
    );
  }

  Widget _buildButton(context, icon) {
    final _size = MediaQuery.of(context).size;
    return NeumorphicButton(
      child: Icon(
        icon,
        size: _size.width / 14.5,
      ),
      padding: EdgeInsets.all(_size.width / 26.0),
      style: NeumorphicStyle(
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.circle(),
        depth: 20.0,
        color: colorBlack2,
      ),
    );
  }
}
