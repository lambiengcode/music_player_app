import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../public/style.dart';

class PlayControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PlayControlState();
}

class _PlayControlState extends State<PlayControl> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Feather.download,
              color: mCM.withOpacity(.8),
              size: width / 16.0,
            ),
            onPressed: () => null,
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.stepBackward,
              color: mCL,
              size: width / 16.0,
            ),
            onPressed: () => null,
          ),
          Container(
            height: width * .16,
            width: width * .16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: mCL,
            ),
            child: Icon(
              Icons.play_arrow,
              color: colorBlack2,
              size: width / 12.0,
            ),
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.stepForward,
              color: mCL,
              size: width / 16.0,
            ),
            onPressed: () => null,
          ),
          IconButton(
            icon: Icon(
              Feather.file_text,
              color: mCM.withOpacity(.8),
              size: width / 16.0,
            ),
            onPressed: () => null,
          ),
        ],
      ),
    );
  }
}
