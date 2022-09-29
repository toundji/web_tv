import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:web_tv/screens/session_info.screen.dart';
import 'package:web_tv/utils/app_utils.dart';

class AppPausedViedeo extends StatefulWidget {
  const AppPausedViedeo({super.key});

  @override
  State<AppPausedViedeo> createState() => _AppPausedViedeoState();
}

class _AppPausedViedeoState extends State<AppPausedViedeo> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      "https://previews.customer.envatousercontent.com/h264-video-previews/9f4a2b87-7089-447d-ac06-098fa6cf9083/19077220.mp4",
    )..initialize().then((_) {
        log("${_controller.value.aspectRatio}");
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        AppUtils.goToScreen(context, SessionInfoScreen());
      },
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            color: Colors.white,
            child: Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
          ),
          Text(
            "Session 1",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
