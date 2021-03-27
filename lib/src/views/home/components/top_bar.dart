import 'package:flutter/material.dart';
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
        _buildButton(context, Icons.search),
        _buildButton(context, Icons.more_horiz),
      ],
    );
  }

  Widget _buildButton(context, icon) {
    final _size = MediaQuery.of(context).size;
    return Neumorphic(
      child: Icon(
        icon,
        size: _size.width / 16.0,
      ),
      padding: EdgeInsets.all(_size.width / 32.0),
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        depth: 10.0,
        color: mC,
      ),
    );
  }
}
