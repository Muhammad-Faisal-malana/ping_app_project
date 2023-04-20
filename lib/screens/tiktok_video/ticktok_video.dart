import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  List<String> urls = [
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"
  ];

  final List<VideoPlayerController> _controllers = [];

  @override
  void initState() {
    super.initState();
    for (var element in urls) {
      _controllers.add(VideoPlayerController.network(element));
      _playVideos();
    }
  }

  void _playVideos() {
    for (var controller in _controllers) {
      // ignore: avoid_single_cascade_in_expression_statements
      controller
        ..initialize().then((_) {
          setState(() {
            controller.play();
            showIcon = true;
          });
        });
    }
  }

  bool showIcon = false;

  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            // CarouselSlider.builder(
            //     options: CarouselOptions(
            //       height: MediaQuery.of(context).size.height*0.8,
            //       aspectRatio: 16 / 9,
            //       viewportFraction: 0.8,
            //       initialPage: 0,
            //       enableInfiniteScroll: true,
            //       reverse: false,
            //       autoPlay: false,
            //       autoPlayInterval: Duration(seconds: 3),
            //       autoPlayAnimationDuration: Duration(milliseconds: 800),
            //       autoPlayCurve: Curves.fastOutSlowIn,
            //       enlargeCenterPage: true,
            //       enlargeFactor: 0.3,
            //       scrollDirection: Axis.horizontal,
            //     ),
            //     itemCount: urls.length,
            //     itemBuilder:
            //         (BuildContext context, int itemIndex, int pageViewIndex) {
            //       VideoPlayerController controller = _controllers[itemIndex];
            //       return VisibilityDetector(
            //         key: const Key('my-widget-key'),
            //         onVisibilityChanged: (VisibilityInfo info) {
            //           var visiblePercentage = info.visibleFraction * 50;
            //           if (_isVisible = info.visibleFraction > 0) {
            //             setState(() {
            //               controller.play();
            //               controller.setLooping(true);
            //             });
            //           }

            //           print(
            //               'Widget ${info.key} is ${visiblePercentage}% visible');
            //         },
            //         child: SizedBox(
            //           width: MediaQuery.of(context).size.width,
            //           height: MediaQuery.of(context).size.height,
            //           child: controller.value.isInitialized
            //               ? AspectRatio(
            //                   aspectRatio: 3 / 2,
            //                   child: VideoPlayer(controller),
            //                 )
            //               : const Expanded(
            //                   child: Center(child: CircularProgressIndicator())),
            //         ),
            //       );
            //     }),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  VideoPlayerController controller = _controllers[index];
                  print(controller.value.isPlaying);
                  return VisibilityDetector(
                    key: const Key('my-widget-key'),
                    onVisibilityChanged: (VisibilityInfo info) {
                      var visiblePercentage = info.visibleFraction * 50;
                      if (_isVisible = info.visibleFraction > 0) {
                        setState(() {
                          controller.play();
                          controller.setLooping(true);
                        });
                      }

                      print(
                          'Widget ${info.key} is ${visiblePercentage}% visible');
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            setState(() {
                              controller.value.isPlaying
                                  ? controller.pause()
                                  : controller.play();
                            });
                          },
                          child: AbsorbPointer(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              child: controller.value.isInitialized
                                  ? AspectRatio(
                                      aspectRatio: 3 / 2,
                                      child: VideoPlayer(controller),
                                    )
                                  : const Center(
                                      child: CircularProgressIndicator()),
                            ),
                          ),
                        ),
                        controller.value.isPlaying
                            ? const SizedBox()
                            : const Icon(
                                Icons.play_arrow,
                                color: Colors.blueAccent,
                                size: 45,
                              )
                        // Center(
                        //   child: Icon(
                        //     controller.value.isPlaying
                        //         ? Icons.pause
                        //         : Icons.play_arrow,
                        //     color: Colors.blueAccent,
                        //     size: 45,
                        //   ),
                        // ),
                      ],
                    ),
                  );
                },
                itemCount: urls.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
