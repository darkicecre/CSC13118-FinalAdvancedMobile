import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  final FlickManager flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        ),
      )
  );

  @override
  Widget build(BuildContext context) {
    // Complete the code in the next step.
    return Center(
      child: AspectRatio(
        aspectRatio: 189/150,
        child: FlickVideoPlayer(
          flickManager: flickManager,
        ),

      ),
    );
  }
}