import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../utils/constants.util.dart';

class AppVideoPlayerScreen extends StatefulWidget {
  const AppVideoPlayerScreen({super.key});

  @override
  State<AppVideoPlayerScreen> createState() => _AppVideoPlayerScreenState();
}

class _AppVideoPlayerScreenState extends State<AppVideoPlayerScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      "https://previews.customer.envatousercontent.com/h264-video-previews/9f4a2b87-7089-447d-ac06-098fa6cf9083/19077220.mp4",
    )..initialize().then((_) {
        log("${_controller.value.aspectRatio}");
        _controller.value.isPlaying ? _controller.pause() : _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      decoration: appGradient,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: _controller.value.isInitialized
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: StadiumBorder()),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "Voter",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.rectangle,
                                color: Colors.white,
                              )),
                        ],
                      )
                    ],
                  )
                ],
              )
            : CircularProgressIndicator(),
      ),
    ));
  }
}
