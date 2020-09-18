import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:playlist_video_youtube/ui/ui_drawer.dart';
import 'package:http/http.dart' as http;
import 'package:playlist_video_youtube/ui/ui_play_video.dart';

class PlaylistVideoScreen extends StatefulWidget {
  final String url, title;

  PlaylistVideoScreen({this.title, this.url});
  @override
  _PlaylistVideoScreenState createState() => _PlaylistVideoScreenState();
}

class _PlaylistVideoScreenState extends State<PlaylistVideoScreen> {
  Future getPlaylist() async {
    final response = await http.get(widget.url);
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    String _title = widget.title;
    // String _url = widget.url;

    return Scaffold(
      // drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(_title),
      ),
      body: FutureBuilder(
        future: getPlaylist(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? PlayVideo(snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
