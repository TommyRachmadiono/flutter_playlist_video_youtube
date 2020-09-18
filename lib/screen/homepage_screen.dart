import 'package:flutter/material.dart';
import 'package:playlist_video_youtube/ui/ui_drawer.dart';
import 'package:playlist_video_youtube/utils/custom_style.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Flutter Youtube Playlist API'),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.cyan,
            // image: DecorationImage(
            //   image: AssetImage('assets/images/bg.jpg'),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Center(
            child: Text(
              'Youtube Playlist',
              style: homeTitleTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
