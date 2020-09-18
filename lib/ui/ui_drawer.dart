import 'package:flutter/material.dart';
import 'package:playlist_video_youtube/screen/playlist_video_screen.dart';
import 'package:playlist_video_youtube/utils/custom_style.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.navigate_next),
                title: Text('Home', style: drawerTextStyle),
                onTap: () {},
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.navigate_next),
                title: Text('Flutter', style: drawerTextStyle),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaylistVideoScreen(
                          title: 'Flutter Playlist',
                          url:
                              'https://flutter-api-youtube-playlist.herokuapp.com/'),
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.navigate_next),
                title: Text('Laravel', style: drawerTextStyle),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaylistVideoScreen(
                          title: 'Laravel Playlist',
                          url:
                              'https://flutter-api-youtube-palylist-2.herokuapp.com/'),
                    ),
                  );
                },
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
