import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/provider/homeProvider.dart';
import 'package:videoplayer/view/homeScreen.dart';
import 'package:videoplayer/view/videoScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'video': (context) => VideoScreen(),
        },
      ),
    ),
  );
}
