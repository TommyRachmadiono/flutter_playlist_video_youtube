import 'package:flutter/material.dart';
import 'package:playlist_video_youtube/ui/ui_webview_video_player.dart';

class PlayVideo extends StatelessWidget {
  final List listData;
  PlayVideo(this.listData);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData == null ? 0 : listData.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayer(
                            "https://youtube.com/embed/${listData[index]['contentDetails']['videoId']}"),
                      ));
                },
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(listData[index]['snippet']
                            ['thumbnails']['high']['url'])),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(listData[index]['snippet']['title']),
              ),
              Divider(thickness: 2),
            ],
          ),
        );
      },
    );
  }
}
