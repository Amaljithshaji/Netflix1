import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'FV3bqvOHRQo',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
    ),
);
  @override
  Widget build(BuildContext context) {
    return Container(width: 300,
    height: 400,
      child: YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      ),
    );
    
  }
}