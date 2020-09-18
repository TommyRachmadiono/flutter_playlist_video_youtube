import 'package:flutter/material.dart';
import 'package:playlist_video_youtube/screen/homepage_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
    );
  }
}