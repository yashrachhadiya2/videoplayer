import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/provider/homeProvider.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();

  }

  @override
  void didChangeDependencies() {
    videoplay(homeProviderFalse=Provider.of<HomeProvider>(context,listen: true).l2[]);
    super.didChangeDependencies();
  }

  void videoplay(int i) {
    
    videoPlayerController =
        VideoPlayerController.asset(Provider.of<HomeProvider>(context,listen: true).l1[i]);
    videoPlayerController!.initialize().then((value) => setState(() {}));
    chewieController =
        ChewieController(videoPlayerController: videoPlayerController!);
  }

  Widget build(BuildContext context) {
    // dynamic video = ModalRoute.of(context)!.settings.arguments;
    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);



    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          height: 300,
          color: Colors.black87,
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              homeProviderFalse!.change();
              if (homeProviderFalse!.isplay) {
                videoPlayerController!.play();
              } else {
                videoPlayerController!.pause();
              }
            },
            child: Chewie(
              controller: chewieController!,
            ),
          ),
        ),
      ),
    ));
  }
}
