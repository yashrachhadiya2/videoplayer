import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  bool isplay = false;

  int i =0;
  void changevalue(){
    
  }



  List l1 = [
    "asset/video/video.mp4",
    "asset/video/video2.mp4",
    "asset/video/video3.mp4",
    "asset/video/video4.mp4",
  ];
  List l2 = [
    "asset/photo/jungle.jpg",
    "asset/photo/natur.jpg",
    "asset/photo/night.jpg",
    "asset/photo/pull.jpg"
  ];

  void change() {
    isplay = !isplay;
    notifyListeners();
  }
}
